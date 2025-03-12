require "test_helper"

class RecipeTest < ActiveSupport::TestCase

  fixtures :recipes
  test "random" do
    recipe = Recipe.find(Recipe.pluck(:id).sample)

    assert_not_empty recipe.name 
    assert_not_empty recipe.ingredients
    assert_not_empty recipe.instructions
  end

  test "required fields" do
    recipe = Recipe.new

    assert_nil recipe.name
    assert_nil recipe.ingredients
    assert_nil recipe.instructions

    refute recipe.valid?
    
    assert_not_empty recipe.errors
  end
end
