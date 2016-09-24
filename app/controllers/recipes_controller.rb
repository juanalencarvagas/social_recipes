class RecipesController < ApplicationController
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
    params.require(:recipe).permit(:name, :cuisine, :food_type, :dish_qtd,
                                   :prep_time, :difficult_level, :ingredients,
                                   :directions)
  end
end
