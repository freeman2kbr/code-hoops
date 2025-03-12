class CreateRecipeCategorizations < ActiveRecord::Migration[8.0]
  def change
    create_table :recipe_categorizations do |t|
      t.belongs_to :recipes
      t.belongs_to :recipe_tags

      t.timestamps
    end
  end
end
