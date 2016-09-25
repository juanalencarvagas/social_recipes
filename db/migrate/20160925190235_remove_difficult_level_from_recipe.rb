class RemoveDifficultLevelFromRecipe < ActiveRecord::Migration[5.0]
  def change
    remove_column :recipes, :difficult_level, :string
  end
end
