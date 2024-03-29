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

ActiveRecord::Schema.define(version: 20140404202648) do

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

  create_table "customers", primary_key: "identity", force: true do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "gender"
    t.integer  "mobile"
    t.string   "email"
    t.text     "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "order_details", force: true do |t|
    t.integer  "order_id"
    t.integer  "replacement_id"
    t.integer  "quantity"
    t.decimal  "unit_price",     precision: 10, scale: 0
    t.decimal  "discount",       precision: 10, scale: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "order_details", ["order_id"], name: "index_order_details_on_order_id", using: :btree
  add_index "order_details", ["replacement_id"], name: "index_order_details_on_replacement_id", using: :btree

  create_table "orders", force: true do |t|
    t.string   "customer_id"
    t.integer  "store"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "orders", ["customer_id"], name: "index_orders_on_customer_id", using: :btree

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

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",                  default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
