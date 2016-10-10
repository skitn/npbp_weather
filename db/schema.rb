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

ActiveRecord::Schema.define(version: 20161010145642) do

  create_table "players", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "team_id",     null: false
    t.string   "name",        null: false
    t.string   "uniform_num", null: false
    t.integer  "birth_year",  null: false
    t.integer  "birth_month", null: false
    t.integer  "birth_day",   null: false
    t.boolean  "active",      null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "stadium_weathers", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "home_stadium_id"
    t.integer  "month"
    t.integer  "day"
    t.string   "weather_name"
    t.string   "icon"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["home_stadium_id", "month", "day"], name: "index_stadium_weathers_on_home_stadium_id_and_month_and_day", unique: true, using: :btree
  end

  create_table "team_stadia", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",                               null: false
    t.decimal  "lat",        precision: 9, scale: 6, null: false
    t.decimal  "lon",        precision: 9, scale: 6, null: false
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "teams", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",            null: false
    t.integer  "home_stadium_id", null: false
    t.string   "url",             null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
