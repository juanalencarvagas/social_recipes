class Recipe < ApplicationRecord
  validates :name, :ingredients, :directions, presence: true
  belongs_to :cuisine
  belongs_to :food_type
  belongs_to :recipe_difficulty

  has_attached_file :picture, styles: { medium: '300x300>', thumb: '100x100>' },
                     default_url: '/images/missing.png'
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/

end
