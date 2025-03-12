class RecipeCategorization < ApplicationRecord
  belongs_to :recipe
  belongs_to :recipe_tag
end
