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

ActiveRecord::Schema.define(version: 20141106002816) do

  create_table "ice_cream_flavors", force: true do |t|
    t.string   "flavor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ice_creams", force: true do |t|
    t.integer  "ice_cream_flavor_id"
    t.integer  "price"
    t.string   "vessel"
    t.string   "order_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "milkshakes", force: true do |t|
    t.integer  "ice_cream_flavor_id"
    t.integer  "price"
    t.string   "milk"
    t.string   "order_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "soda_flavors", force: true do |t|
    t.string   "soda"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sodas", force: true do |t|
    t.integer  "ice_cream_flavor_id"
    t.integer  "soda_flavor_id"
    t.integer  "price"
    t.string   "discount"
    t.string   "order_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
