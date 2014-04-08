class BookingsController < ApplicationController

  def new
    @booking = Booking.new
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.valid?
      @booking.save
      redirect_to @booking, notice: "Thanks for booking with #{@booking.taxi.name}."
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:name, :taxi_id)
  end

end
