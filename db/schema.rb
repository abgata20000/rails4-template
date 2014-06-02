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

ActiveRecord::Schema.define(version: 20140602040049) do

  create_table "users", force: true do |t|
    t.string   "name",             default: "",    null: false
    t.string   "email",            default: "",    null: false
    t.string   "crypted_password", default: "",    null: false
    t.string   "salt",             default: "",    null: false
    t.string   "nickname",         default: "",    null: false
    t.string   "nickname_kana",    default: "",    null: false
    t.integer  "auth",             default: 0,     null: false
    t.date     "last_login"
    t.boolean  "premium_flg",      default: false, null: false
    t.date     "premium_limit"
    t.text     "profile"
    t.boolean  "temporary_flg",    default: false, null: false
    t.string   "token",            default: "",    null: false
    t.date     "token_date"
    t.text     "comment"
    t.boolean  "enabled",          default: true,  null: false
    t.integer  "sort",             default: 0,     null: false
    t.integer  "created_user",     default: 0,     null: false
    t.integer  "updated_user",     default: 0,     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["created_at"], name: "index_users_on_created_at", using: :btree
  add_index "users", ["created_user"], name: "index_users_on_created_user", using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["enabled"], name: "index_users_on_enabled", using: :btree
  add_index "users", ["name"], name: "index_users_on_name", using: :btree
  add_index "users", ["sort"], name: "index_users_on_sort", using: :btree
  add_index "users", ["token"], name: "index_users_on_token", using: :btree
  add_index "users", ["updated_at"], name: "index_users_on_updated_at", using: :btree
  add_index "users", ["updated_user"], name: "index_users_on_updated_user", using: :btree

end
