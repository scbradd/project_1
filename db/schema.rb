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

ActiveRecord::Schema.define(version: 2018_07_14_052900) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "areas", force: :cascade do |t|
    t.text "name"
    t.text "image"
    t.text "url"
    t.integer "red_id"
    t.integer "white_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "favorite_wines", force: :cascade do |t|
    t.integer "red_id"
    t.integer "white_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "favouritewines_reds_whites", force: :cascade do |t|
  end

  create_table "reds", force: :cascade do |t|
    t.text "name"
    t.text "image"
    t.integer "varietal_id"
    t.text "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reds_varietals", id: false, force: :cascade do |t|
    t.integer "red_id"
    t.integer "varietal_id"
    t.integer "favouritewines_id"
  end

  create_table "users", force: :cascade do |t|
    t.text "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "varietals", force: :cascade do |t|
    t.integer "red_id"
    t.integer "white_id"
    t.text "image"
    t.text "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "whites", force: :cascade do |t|
    t.text "name"
    t.text "image"
    t.integer "varietal_id"
    t.text "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "whites_varietals", force: :cascade do |t|
  end

end
