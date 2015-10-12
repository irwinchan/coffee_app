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

ActiveRecord::Schema.define(version: 20151012142244) do

  create_table "coffee_beans", force: :cascade do |t|
    t.string   "brand"
    t.string   "roast"
    t.string   "name"
    t.string   "origin"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "user_id"
    t.string   "description_short"
  end

  add_index "coffee_beans", ["user_id"], name: "index_coffee_beans_on_user_id"

  create_table "recipes", force: :cascade do |t|
    t.integer  "coffee_id"
    t.integer  "grinder_id"
    t.integer  "coffee_maker_id"
    t.text     "technique"
    t.float    "water_vol"
    t.float    "water_temp"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "user_id"
    t.string   "title"
    t.integer  "coffee_amount"
    t.text     "description"
    t.integer  "coffee_bean_id"
  end

  add_index "recipes", ["coffee_bean_id"], name: "index_recipes_on_coffee_bean_id"
  add_index "recipes", ["user_id"], name: "index_recipes_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
  end

end
