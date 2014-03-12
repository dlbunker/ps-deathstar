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

ActiveRecord::Schema.define(version: 20140210215707) do

  create_table "death_stars", force: true do |t|
    t.string   "name"
    t.datetime "inception_date"
    t.decimal  "circumference"
    t.decimal  "area"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "metals", force: true do |t|
    t.decimal  "density"
    t.decimal  "melting_point"
    t.decimal  "hardness"
    t.decimal  "cost"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ports", force: true do |t|
    t.integer  "death_star_id"
    t.integer  "metal_id"
    t.string   "name"
    t.integer  "landing_pads"
    t.decimal  "size"
    t.decimal  "x"
    t.decimal  "y"
    t.decimal  "z"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reactors", force: true do |t|
    t.integer  "death_star_id"
    t.integer  "metal_id"
    t.string   "name"
    t.decimal  "power_output"
    t.decimal  "x"
    t.decimal  "y"
    t.decimal  "z"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rooms", force: true do |t|
    t.integer  "death_star_id"
    t.integer  "metal_id"
    t.string   "name"
    t.string   "color"
    t.decimal  "size"
    t.decimal  "x"
    t.decimal  "y"
    t.decimal  "z"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "work_orders", force: true do |t|
    t.string   "name"
    t.datetime "date_started"
    t.datetime "date_complete"
    t.decimal  "price"
    t.integer  "workable_id"
    t.string   "workable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
