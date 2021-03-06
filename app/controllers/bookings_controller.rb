class BookingsController < ApplicationController
  #line below will call #set_booking method before specified actions
  before_action :set_booking, only: [:show, :edit, :update, :approve, :reject]


  def index
    @bookings_musician = Booking.where(musician_id: current_user.id).reverse
    @bookings_customer = Booking.where(customer_id: current_user.id).reverse

    # @bookings.each do |booking|
    #   booking.status
    # end
  end

  def show
    @booking = Booking.find(params[:id])
    @musician = User.find(@booking.musician_id)
  end

  def new
    @musician = User.find(params[:user_id])
    if @musician == nil
      @musician = User.find(params[:booking][:musician_id])
    end
    @musician_id = @musician.id
    @customer_id = current_user.id
    @booking = Booking.new
  end

  def edit
  end

  def create
    year = params["booking"]["date_time(1i)"].to_i
    month = params["booking"]["date_time(2i)"].to_i
    day = params["booking"]["date_time(3i)"].to_i
    hour = params["booking"]["date_time(4i)"].to_i
    minute = params["booking"]["date_time(5i)"].to_i
    @date_time = DateTime.new(year, month, day, hour, minute)

    @booking = Booking.new({
      date_time: @date_time,
      status: nil,
      repertoire_number: params[:booking][:repertoire_number],
      location: params[:booking][:location],
      comments: params[:booking][:comments],
      customer_id: current_user.id,
      musician_id: params[:booking][:musician_id],
      price: params[:booking][:price].to_i
    })
    @booking.customer_id = current_user.id
    if @booking.save
      redirect_to booking_path(@booking)
    else
      redirect_to new_user_booking_path(params[:booking][:musician_id])
    end
  end

  def update
    @booking.update(booking_params)
    redirect_to bookings_path
  end

  def approve
    @booking.status = true
    @booking.save
    redirect_to bookings_path
  end

  def reject
    @booking.status = false
    @booking.save
    redirect_to bookings_path
  end

def destroy
  @booking = Booking.find(params[:id])
  @booking.destroy

  redirect_to bookings_path
end


  private

  def booking_params
    params.require(:booking).permit(:date_time, :status, :location, :comments, :customer_id, :musician_id, :repertoire_number, :price)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end

# def index
#     @bookings = Booking.all.order("created_at DESC")
#     @bookings.each do |booking|
#       booking.status
#     end
#   end
