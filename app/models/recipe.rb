class Recipe < ApplicationRecord
  has_many :recipe_categorizations
  has_many :recipe_tags, through: :recipe_categorizations

  validates :name, presence: true
  validates :ingredients, presence: true
  validates :instructions, presence: true
end
