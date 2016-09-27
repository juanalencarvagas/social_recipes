class HomeController < ApplicationController

  def index
    @recipes_top_20 = Recipe.all.order(created_at: :desc).take(20)
    @cuisines = Cuisine.all
    @food_type = FoodType.all
  end

end
