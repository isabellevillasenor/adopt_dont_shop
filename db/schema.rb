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

ActiveRecord::Schema.define(version: 2020_12_16_021004) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "pet_applications", force: :cascade do |t|
    t.bigint "pet_id"
    t.bigint "user_application_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "status", default: "In Progress"
    t.index ["pet_id"], name: "index_pet_applications_on_pet_id"
    t.index ["user_application_id"], name: "index_pet_applications_on_user_application_id"
  end

  create_table "pets", force: :cascade do |t|
    t.string "image"
    t.string "name"
    t.integer "approximate_age"
    t.bigint "shelter_id"
    t.string "description"
    t.boolean "adoptable", default: true
    t.integer "sex"
    t.index ["shelter_id"], name: "index_pets_on_shelter_id"
  end

  create_table "shelters", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "city"
    t.string "state"
    t.integer "zip"
  end

  create_table "user_applications", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "description"
    t.integer "status", default: 0
  end

  add_foreign_key "pet_applications", "pets"
  add_foreign_key "pet_applications", "user_applications"
  add_foreign_key "pets", "shelters"
end
