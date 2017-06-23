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

ActiveRecord::Schema.define(version: 20170619193707) do

  create_table "histories", force: :cascade do |t|
    t.date     "ymd"
    t.integer  "category"
    t.string   "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "live", id: false, force: :cascade do |t|
    t.text "1"
    t.text "2000-01-16"
    t.text "グリーングリーン2000"
    t.text ""
    t.text "1970/1/1 0:00"
    t.text "1980/1/1 0:00"
  end

  create_table "lives", force: :cascade do |t|
    t.date     "ymd"
    t.string   "title"
    t.string   "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "setlists", force: :cascade do |t|
    t.date     "ymd"
    t.string   "title"
    t.integer  "event_id"
    t.text     "area"
    t.text     "place"
    t.integer  "main"
    t.integer  "e1"
    t.integer  "e2"
    t.integer  "e3"
    t.string   "s1"
    t.string   "s2"
    t.string   "s3"
    t.string   "s4"
    t.string   "s5"
    t.string   "s6"
    t.string   "s7"
    t.string   "s8"
    t.string   "s9"
    t.string   "s10"
    t.string   "s11"
    t.string   "s12"
    t.string   "s13"
    t.string   "s14"
    t.string   "s15"
    t.string   "s16"
    t.string   "s17"
    t.string   "s18"
    t.string   "s19"
    t.string   "s20"
    t.string   "s21"
    t.string   "s22"
    t.string   "s23"
    t.string   "s24"
    t.string   "s25"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
