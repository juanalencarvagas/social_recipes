class CuisinesController < ApplicationController
  def show
    @cuisine = Cuisine.find(params[:id])
  end

  def new
    @cuisine = Cuisine.new
  end

  def create
    @cuisine = Cuisine.new(cuisine_params)
    if @cuisine.save
      redirect_to @cuisine
    else
      flash[:alert] = 'Inclua o tipo da cozinha.'
      render :new
    end
  end

  private

  def cuisine_params
    params.require(:cuisine).permit(:kind)
  end
end
