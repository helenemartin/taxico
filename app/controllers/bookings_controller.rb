class BookingsController < ApplicationController
  before_filter :authenticate_user!

  def new
    @booking = Booking.new
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.name = current_user.email
    if @booking.valid?
      @booking.save
      redirect_to @booking, notice: "Thanks for booking with #{@booking.taxi.name}."
    else
      render :new
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update_attributes(booking_params)
      redirect_to @booking, notice: "Thanks for booking with #{@booking.taxi.name}."
    else
      render :edit
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:taxi_id)
  end

end
