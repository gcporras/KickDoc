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

ActiveRecord::Schema.define(version: 20150423174656) do

  create_table "documentaries", force: :cascade do |t|
    t.string   "title"
    t.text     "short_synopsis"
    t.text     "long_synopsis"
    t.integer  "backers"
    t.datetime "expired_at"
    t.string   "creator"
    t.integer  "percent_funded"
    t.string   "city"
    t.integer  "budget"
    t.text     "purpose"
    t.string   "thumbnail_url"
    t.string   "pitch_video_url"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "documentary_has_genres", force: :cascade do |t|
    t.integer  "documentary_id"
    t.integer  "genre_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
