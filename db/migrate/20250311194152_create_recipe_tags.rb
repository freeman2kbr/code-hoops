class CreateRecipeTags < ActiveRecord::Migration[8.0]
  def change
    create_table :recipe_tags do |t|
      t.string :name, null: false, limit: 50
      t.integer :total_recipes, null: false, default: 0

      t.timestamps
    end
  end
end
