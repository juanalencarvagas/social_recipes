class FoodTypesController < ApplicationController
  def show
    @foodtype = FoodType.find(params[:id])
  end

  def new
    @foodtype = FoodType.new
  end

  def create
    @foodtype = FoodType.new(foodtype_params)
    if @foodtype.save
      redirect_to @foodtype
    else
      flash[:alert] = 'Inclua o nome do tipo.'
      render 'new'
    end
  end

  private

  def foodtype_params
    params.require(:food_type).permit(:name)
  end
end
