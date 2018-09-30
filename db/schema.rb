# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_09_30_201046) do

  create_table "admins", force: :cascade do |t|
    t.string "email"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.index ["email"], name: "index_admins_on_email", unique: true
  end

  create_table "houses", force: :cascade do |t|
    t.integer "house_id"
    t.integer "real_estate_company_id"
    t.text "location"
    t.decimal "square_footage"
    t.integer "year_built"
    t.string "style"
    t.decimal "list_price"
    t.integer "floors"
    t.boolean "basement"
    t.string "current_owner"
    t.text "contact_information"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["real_estate_company_id"], name: "index_houses_on_real_estate_company_id"
  end

  create_table "real_estate_companies", force: :cascade do |t|
    t.integer "real_estate_compay_id"
    t.string "name"
    t.string "website"
    t.text "address"
    t.string "size"
    t.integer "founded"
    t.decimal "revenue"
    t.text "synopsis"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
