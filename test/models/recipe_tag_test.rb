require "test_helper"

class RecipeTagTest < ActiveSupport::TestCase

  fixtures :recipe_tags
  test "random" do
    recipe = RecipeTag.find(RecipeTag.pluck(:id).sample)

    assert_not_empty recipe.name
  end

  test "required fields" do
    recipeTag = RecipeTag.new

    assert_nil recipeTag.name

    refute recipeTag.valid?
    
    assert_not_empty recipeTag.errors
  end
end
