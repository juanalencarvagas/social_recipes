class AddTypeToCuisine < ActiveRecord::Migration[5.0]
  def change
    add_column :cuisines, :kind, :string
  end
end
