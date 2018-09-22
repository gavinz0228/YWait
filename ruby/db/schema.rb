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

ActiveRecord::Schema.define(version: 20180922222035) do

  create_table "featured_merchants", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "merchant_id"
    t.integer  "reward_points", default: 0, null: false
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "featured_merchants", ["merchant_id"], name: "index_featured_merchants_on_merchant_id"
  add_index "featured_merchants", ["user_id"], name: "index_featured_merchants_on_user_id"

  create_table "merchants", force: :cascade do |t|
    t.string   "name",        default: "", null: false
    t.string   "address"
    t.float    "lat"
    t.float    "long"
    t.text     "description"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "merchants_tags", id: false, force: :cascade do |t|
    t.integer "tag_id",      null: false
    t.integer "merchant_id", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string   "name",               default: "", null: false
    t.integer  "user_tag_count",     default: 0,  null: false
    t.integer  "merchant_tag_count", default: 0,  null: false
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "tags_users", id: false, force: :cascade do |t|
    t.integer "tag_id",  null: false
    t.integer "user_id", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "address"
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "waiting_lists", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "merchant_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "status"
    t.integer  "priority"
  end

  add_index "waiting_lists", ["merchant_id"], name: "index_waiting_lists_on_merchant_id"
  add_index "waiting_lists", ["user_id"], name: "index_waiting_lists_on_user_id"

end
