class Cuisine < ApplicationRecord
  validates :kind, presence: true
  has_many :recipes
end
