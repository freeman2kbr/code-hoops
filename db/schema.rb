# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_03_12_133510) do
  create_table "recipe_categorizations", charset: "utf8mb3", collation: "utf8mb3_uca1400_ai_ci", force: :cascade do |t|
    t.bigint "recipes_id"
    t.bigint "recipe_tags_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipe_tags_id"], name: "index_recipe_categorizations_on_recipe_tags_id"
    t.index ["recipes_id"], name: "index_recipe_categorizations_on_recipes_id"
  end

  create_table "recipe_tags", charset: "utf8mb3", collation: "utf8mb3_uca1400_ai_ci", force: :cascade do |t|
    t.string "name", limit: 50, null: false
    t.integer "total_recipes", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recipes", charset: "utf8mb3", collation: "utf8mb3_uca1400_ai_ci", force: :cascade do |t|
    t.string "name", limit: 100, null: false
    t.text "ingredients", null: false
    t.text "instructions", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
