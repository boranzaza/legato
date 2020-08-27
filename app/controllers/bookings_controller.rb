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
