class BookingsController < ApplicationController
  #line below will call #set_booking method before specified actions
  before_action :set_booking, only: [:show, :edit, :update, :approve, :reject]

  def new
    @customer_id = User.find(params[:user_id])
    @booking = Booking.new
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

  def index
    @bookings = Booking.where(musician_id: current_user.id).reverse
    # @current_bookings = Booking.where daytime
    @bookings.each do |booking|
      booking.status
    end
  end

  def show
  end

  def edit
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

  private

  def booking_params
    params.require(:booking).permit(:date_time, :status, :location, :comments, :musician_id, :customer_id)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
