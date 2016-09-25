class AddDifficultLevelToRecipe < ActiveRecord::Migration[5.0]
  def change
    add_reference :recipes, :recipe_difficulty, foreign_key: true
  end
end
