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

ActiveRecord::Schema.define(version: 2018_07_12_213313) do

  create_table "activities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "guide_availabilities", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "guide_availability_activities", force: :cascade do |t|
    t.integer "GuideAvailability_id"
    t.integer "Activity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Activity_id"], name: "index_guide_availability_activities_on_Activity_id"
    t.index ["GuideAvailability_id"], name: "index_guide_availability_activities_on_GuideAvailability_id"
  end

  create_table "guide_availability_locations", force: :cascade do |t|
    t.integer "GuideAvailability_id"
    t.integer "Location_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["GuideAvailability_id"], name: "index_guide_availability_locations_on_GuideAvailability_id"
    t.index ["Location_id"], name: "index_guide_availability_locations_on_Location_id"
  end

  create_table "guide_availability_options", force: :cascade do |t|
    t.integer "GuideAvailability_id"
    t.integer "Option_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["GuideAvailability_id"], name: "index_guide_availability_options_on_GuideAvailability_id"
    t.index ["Option_id"], name: "index_guide_availability_options_on_Option_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "options", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trip_activities", force: :cascade do |t|
    t.integer "Trip_id"
    t.integer "Activity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Activity_id"], name: "index_trip_activities_on_Activity_id"
    t.index ["Trip_id"], name: "index_trip_activities_on_Trip_id"
  end

  create_table "trip_options", force: :cascade do |t|
    t.integer "Trip_id"
    t.integer "Option_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Option_id"], name: "index_trip_options_on_Option_id"
    t.index ["Trip_id"], name: "index_trip_options_on_Trip_id"
  end

  create_table "trips", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
