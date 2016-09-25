class CreateRecipeDifficulties < ActiveRecord::Migration[5.0]
  def change
    create_table :recipe_difficulties do |t|
      t.string :level

      t.timestamps
    end
  end
end
