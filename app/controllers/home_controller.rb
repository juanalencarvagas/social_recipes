class HomeController < ApplicationController

  def index
    @recipes = Recipe.all.order(created_at: :desc).take(20)
    @cuisines = Recipe.cuisine
  end

end
