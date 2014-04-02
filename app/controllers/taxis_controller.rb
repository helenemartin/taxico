class TaxisController < ApplicationController

  def new
    @taxi = Taxi.new
  end

  def show
    @taxi = Taxi.find(params[:id])
  end

  def create
    @taxi = Taxi.new(taxi_params)
    if @taxi.valid?
      @taxi.save
      redirect_to @taxi
    else
      render :new
    end
  end

  def index
    @taxis = Taxi.all
  end

  private

  def taxi_params
    params.require(:taxi).permit(:name, :phone_number, :number_of_taxis)
  end

end
