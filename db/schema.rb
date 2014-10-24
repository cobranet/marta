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

ActiveRecord::Schema.define(version: 20141024133937) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "aktivnosts", force: true do |t|
    t.integer  "user_id"
    t.integer  "pitanje"
    t.string   "odgovor"
    t.string   "rez"
    t.datetime "kad"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "odgovors", force: true do |t|
    t.integer  "pitanje_id"
    t.string   "odgovor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pitanjes", force: true do |t|
    t.string   "pitanje"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "broj"
  end

  create_table "users", force: true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image"
    t.string   "location"
  end

end
