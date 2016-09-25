class Recipe < ApplicationRecord
  validates :name, :ingredients, :directions, presence: true
  belongs_to :cuisine
  belongs_to :food_type
  belongs_to :recipe_difficulty
end
