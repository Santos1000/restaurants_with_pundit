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

ActiveRecord::Schema.define(version: 2022_02_09_203303) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "menu_beverages", force: :cascade do |t|
    t.string "name_beverage"
    t.string "portion_beverage"
    t.text "description_beverage"
    t.string "category_beverage"
    t.decimal "price_beverage"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "restaurant_id", null: false
    t.index ["restaurant_id"], name: "index_menu_beverages_on_restaurant_id"
  end

  create_table "menu_beverages_meals", id: false, force: :cascade do |t|
    t.bigint "menu_meal_id", null: false
    t.bigint "menu_beverage_id", null: false
  end

  create_table "menu_meals", force: :cascade do |t|
    t.string "meal_name"
    t.string "portion_meal"
    t.text "description_meal"
    t.string "category_meal"
    t.decimal "price_meal"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "restaurant_id", null: false
    t.index ["restaurant_id"], name: "index_menu_meals_on_restaurant_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "description"
    t.string "picture_url"
    t.string "plates"
    t.string "beverage"
    t.string "location"
    t.index ["user_id"], name: "index_restaurants_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "menu_beverages", "restaurants"
  add_foreign_key "menu_meals", "restaurants"
  add_foreign_key "restaurants", "users"
end
