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

ActiveRecord::Schema.define(version: 2018_10_01_204007) do

  create_table "houses", force: :cascade do |t|
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
    t.integer "user_id"
    t.integer "potential_buyers_id"
    t.index ["potential_buyers_id"], name: "index_houses_on_potential_buyers_id"
    t.index ["real_estate_company_id"], name: "index_houses_on_real_estate_company_id"
    t.index ["user_id"], name: "index_houses_on_user_id"
  end

  create_table "inquiries", force: :cascade do |t|
    t.integer "user_id"
    t.integer "house_id"
    t.string "subject"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "reply"
    t.index ["house_id"], name: "index_inquiries_on_house_id"
    t.index ["user_id"], name: "index_inquiries_on_user_id"
  end

  create_table "real_estate_companies", force: :cascade do |t|
    t.string "name"
    t.string "website"
    t.text "address"
    t.string "size"
    t.integer "founded"
    t.decimal "revenue"
    t.text "synopsis"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "users_id"
    t.index ["users_id"], name: "index_real_estate_companies_on_users_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "current_mode"
    t.boolean "is_admin", default: false
    t.string "phone_number"
    t.string "preferred_contact"
    t.integer "real_estate_company_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["real_estate_company_id"], name: "index_users_on_real_estate_company_id"
  end

end
