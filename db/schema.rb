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

ActiveRecord::Schema.define(version: 20170512063032) do

  create_table "hotpeppers", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "location",   limit: 255
    t.string   "open_time",  limit: 255
    t.integer  "price",      limit: 4
    t.string   "URL",        limit: 255
    t.integer  "tel",        limit: 4
    t.text     "review",     limit: 65535
    t.integer  "rate",       limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "places", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "description", limit: 255
    t.float    "latitude",    limit: 24
    t.float    "longitude",   limit: 24
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "restaurants", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.decimal  "latitude",                 precision: 12, scale: 10
    t.decimal  "longitude",                precision: 13, scale: 10
    t.string   "adress",     limit: 255
    t.text     "open_time",  limit: 65535
    t.string   "budget",     limit: 255
    t.string   "url",        limit: 255
    t.string   "tel",        limit: 255
    t.text     "imaege",     limit: 65535
    t.integer  "rate",       limit: 4
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "user_id",       limit: 4
    t.integer  "restaurant_id", limit: 4
    t.integer  "rate",          limit: 4
    t.integer  "OK_NOT",        limit: 4
    t.text     "review",        limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "name",                   limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
