class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :cuisine
      t.string :food_type
      t.integer :dish_qtd
      t.float :prep_time
      t.string :difficult_level
      t.text :ingredients
      t.text :directions

      t.timestamps
    end
  end
end
