class RecipeTag < ApplicationRecord
  has_many :recipe_categorizations
  has_many :recipes, through: :recipe_categorizations

  validates :name, presence: true
end
