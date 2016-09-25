class Cuisine < ApplicationRecord
  validates :kind, presence: true
end
