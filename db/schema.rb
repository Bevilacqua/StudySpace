# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160508093848) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "checkins", force: true do |t|
    t.integer  "user_id"
    t.integer  "spot_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ratings", force: true do |t|
    t.integer  "user_id"
    t.integer  "spot_id"
    t.integer  "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ratings", ["spot_id"], name: "index_ratings_on_spot_id", using: :btree
  add_index "ratings", ["user_id"], name: "index_ratings_on_user_id", using: :btree

  create_table "sound_levels", force: true do |t|
    t.integer  "user_id"
    t.integer  "spot_id"
    t.integer  "value",      default: 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sound_levels", ["spot_id"], name: "index_sound_levels_on_spot_id", using: :btree
  add_index "sound_levels", ["user_id"], name: "index_sound_levels_on_user_id", using: :btree

  create_table "spots", force: true do |t|
    t.text     "name"
    t.text     "location"
    t.text     "description"
    t.integer  "stype"
    t.float    "current_sound_level", default: 2.0
    t.float    "rating",              default: 4.0
    t.integer  "rating_count",        default: 1
    t.integer  "checkin_count"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "statuses", force: true do |t|
    t.integer  "user_id"
    t.integer  "spot_id"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "statuses", ["spot_id"], name: "index_statuses_on_spot_id", using: :btree
  add_index "statuses", ["user_id"], name: "index_statuses_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.text     "uname"
    t.text     "ip_adr"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
