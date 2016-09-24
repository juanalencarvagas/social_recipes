class RemoveTypeFromCuisine < ActiveRecord::Migration[5.0]
  def change
    remove_column :cuisines, :type, :string
  end
end
