class RecipeDifficultiesController < ApplicationController
  def show
    @recipe_difficulty = RecipeDifficulty.find(params[:id])
  end

  def new
    @recipe_difficulty = RecipeDifficulty.new
  end

  def create
    @recipe_difficulty = RecipeDifficulty.new(recipe_difficulty_params)
    if @recipe_difficulty.save
      redirect_to @recipe_difficulty
    else
      render 'new'
    end
  end

  private

  def recipe_difficulty_params
    params.require(:recipe_difficulty).permit(:level)
  end
end
