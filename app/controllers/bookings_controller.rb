class BookingsController < ApplicationController
  #line below will call #set_booking method before specified actions
  before_action :set_booking, only: [:show, :edit, :update, :approve, :reject]


  def index
    @bookings = Booking.where(musician_id: current_user.id).reverse
    @bookings.each do |booking|
      booking.status
    end
  end

  def show
    a = Booking.find(params[:id])
  end

  def new
    @customer_id = User.find(params[:user_id])
    @booking = Booking.new
  end

  def edit
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.customer_id = current_user
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
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



#   # 1. Display list with indices
#     display_tasks
#     # 2. Ask user for index
#     index = @view.ask_user_for_index
#     # 3. Remove from repository
#     @repository.remove(index)

# no need for app/views/restaurants/destroy.html.erb

  private

  def booking_params
    params.require(:booking).permit(:date_time, :status, :location, :comments, :customer_id, :musician_id)
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
