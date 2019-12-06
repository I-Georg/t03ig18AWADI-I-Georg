# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_12_06_154526) do

  create_table "carts", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "chocolate_bars", force: :cascade do |t|
    t.text "bar_name"
    t.decimal "price"
    t.text "company_maker"
    t.integer "review_date"
    t.integer "cocoa_percent"
    t.integer "country_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["country_id"], name: "index_chocolate_bars_on_country_id"
  end

  create_table "countries", force: :cascade do |t|
    t.text "country_name"
    t.decimal "lattitude"
    t.decimal "longitude"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "itemfor_carts", force: :cascade do |t|
    t.integer "chocolate_bar_id", null: false
    t.integer "cart_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "quantity", default: 1
    t.index ["cart_id"], name: "index_itemfor_carts_on_cart_id"
    t.index ["chocolate_bar_id"], name: "index_itemfor_carts_on_chocolate_bar_id"
  end

  create_table "line_items", force: :cascade do |t|
    t.integer "chocolate_bar_id", null: false
    t.integer "cart_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cart_id"], name: "index_line_items_on_cart_id"
    t.index ["chocolate_bar_id"], name: "index_line_items_on_chocolate_bar_id"
  end

  create_table "product_carts", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "chocolate_bars", "countries"
  add_foreign_key "itemfor_carts", "carts"
  add_foreign_key "itemfor_carts", "chocolate_bars"
  add_foreign_key "line_items", "carts"
  add_foreign_key "line_items", "chocolate_bars"
end
