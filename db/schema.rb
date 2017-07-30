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

ActiveRecord::Schema.define(version: 20170730074418) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "restaurants", force: :cascade do |t|
    t.string "picture"
    t.string "address1"
    t.string "address2"
    t.string "postal_code"
    t.string "contact"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "restaurant_name"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "user_picture"
    t.string "name"
    t.integer "user_spending"
    t.integer "no_of_parties"
    t.integer "overall_rating"
    t.string "who_brought_me_here"
    t.string "char_review"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "user_picture"
    t.string "name"
    t.string "password"
    t.string "top_5_restaurants"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
