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

ActiveRecord::Schema.define(version: 20130920045200) do

  create_table "dim_items", force: true do |t|
    t.string   "item_code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "direct_bin_contents", force: true do |t|
    t.string   "bin_name",   limit: 15
    t.string   "item_code",  limit: 15
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "direct_bin_contents", ["item_code"], name: "dbc_ix1", using: :btree

  create_table "pick_paths", force: true do |t|
    t.string   "bin_name"
    t.integer  "pick_order"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin"
    t.boolean  "demand"
    t.boolean  "direct"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["remember_token"], name: "index_users_on_remember_token", using: :btree

end
