class BookingsController < ApplicationController
  #line below will call #set_booking method before specified actions
  before_action :set_booking, only: [:show, :edit, :update, :approve, :reject]

  def index
    @bookings = Booking.all.order("created_at DESC")
    @bookings.each do |booking|
      booking.status
    end
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
      location: params[:booking][:location],
      comments: params[:booking][:comments],
      customer_id: current_user.id,
      musician_id: params[:booking][:musician_id]})
    @booking.customer_id = current_user.id
    if @booking.save
      redirect_to bookings_path(@booking)
    else
      raise
      redirect_to new_user_booking_path(params[:booking][:musician_id])
    end
  end

  def index
    @bookings = Booking.where(musician_id: current_user.id).reverse
    # @current_bookings = Booking.where daytime
    @bookings.each do |booking|
      booking.status
    end
  end

  def show
  end

  def update
    @booking.update(booking_params)
    redirect_to bookings_path
  end

  def edit
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

  private

  def booking_params
    params.require(:booking).permit(:date_time, :status, :location, :comments, :customer_id, :musician_id)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
