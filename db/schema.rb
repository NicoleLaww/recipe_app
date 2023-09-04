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

ActiveRecord::Schema.define(version: 2023_09_04_184950) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "favourites", force: :cascade do |t|
    t.bigint "recipe_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_favourites_on_user_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "title"
    t.boolean "gluten_free"
    t.boolean "vegan"
    t.boolean "vegetarian"
    t.boolean "breakfast"
    t.boolean "kosher"
    t.boolean "peanut_free"
    t.boolean "halal"
    t.boolean "dinner"
    t.boolean "lunch"
    t.boolean "dessert"
    t.boolean "appetizer"
    t.string "photo"
    t.integer "time"
    t.integer "number_of_servings"
    t.text "instructions"
    t.string "country"
    t.text "description"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "ingredients", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.bigint "recipe_id"
    t.bigint "user_id"
    t.string "comment"
    t.integer "rating"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["recipe_id"], name: "index_reviews_on_recipe_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.string "username"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
  end

  add_foreign_key "reviews", "recipes"
  add_foreign_key "reviews", "users"
end
