class Recipe < ApplicationRecord
  validates :name, :ingredients, :directions, presence: true
  belongs_to :cuisine
  belongs_to :recipe
end
