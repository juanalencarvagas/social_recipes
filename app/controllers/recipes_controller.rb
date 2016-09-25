class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to @recipe
    else
      flash[:alert] = 'Preencha os campos obrigatórios'
      render :new
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :cuisine_id, :food_type_id, :dish_qtd,
                                   :prep_time, :recipe_difficulty_id, :ingredients,
                                   :directions)
  end
end
