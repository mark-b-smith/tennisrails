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

ActiveRecord::Schema.define(version: 20141024085008) do

  create_table "costs", force: true do |t|
    t.float    "cost"
    t.datetime "asOf"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "kitty_trans", force: true do |t|
    t.integer  "pID"
    t.float    "amount"
    t.boolean  "credit"
    t.integer  "mID"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "match_costs", force: true do |t|
    t.integer  "cost_code"
    t.integer  "mID"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "matches", force: true do |t|
    t.integer  "t11"
    t.integer  "t12"
    t.integer  "t1s"
    t.integer  "t21"
    t.integer  "t22"
    t.integer  "t2s"
    t.datetime "match_date"
    t.boolean  "doubles"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", force: true do |t|
    t.string   "first"
    t.string   "last"
    t.boolean  "full_charge"
    t.boolean  "play_singles"
    t.boolean  "pref9"
    t.boolean  "only9"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "terms", force: true do |t|
    t.string   "title"
    t.datetime "sDate"
    t.datetime "eDate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
