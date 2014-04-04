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

ActiveRecord::Schema.define(version: 20140404033354) do

  create_table "cars", force: true do |t|
    t.string   "brand"
    t.string   "model"
    t.integer  "year"
    t.integer  "type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cars", ["type_id"], name: "index_cars_on_type_id", using: :btree

  create_table "cars_replacements", force: true do |t|
    t.integer "car_id"
    t.integer "replacement_id"
  end

  add_index "cars_replacements", ["car_id", "replacement_id"], name: "cars_replacements", unique: true, using: :btree

  create_table "replacements", force: true do |t|
    t.string   "name"
    t.decimal  "sale_price",     precision: 10, scale: 0
    t.decimal  "purchase_price", precision: 10, scale: 0
    t.integer  "units_in_stock"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
