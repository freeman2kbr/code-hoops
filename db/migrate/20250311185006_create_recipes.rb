class CreateRecipes < ActiveRecord::Migration[8.0]
  def change
    create_table :recipes do |t|
      t.string :name, null: false, limit: 100
      t.text :ingredients, null: false
      t.text :instructions, null: false

      t.timestamps
    end
  end
end
