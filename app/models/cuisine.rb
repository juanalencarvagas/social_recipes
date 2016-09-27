class Cuisine < ApplicationRecord
  validates :kind, presence: true
  has_many :recipes

  #def recipes_by_cuisine id
  #  find(id).recipes
  #end

end
