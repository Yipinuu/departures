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

ActiveRecord::Schema.define(version: 20141225124731) do

  create_table "articles", force: true do |t|
    t.string   "title"
    t.integer  "user_id"
    t.integer  "specol_id"
    t.integer  "spepage_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "content",    limit: 2147483647
  end

  add_index "articles", ["specol_id", "created_at"], name: "index_articles_on_specol_id_and_created_at", using: :btree
  add_index "articles", ["spepage_id", "created_at"], name: "index_articles_on_spepage_id_and_created_at", using: :btree
  add_index "articles", ["user_id", "created_at"], name: "index_articles_on_user_id_and_created_at", using: :btree

  create_table "experiments", force: true do |t|
    t.integer  "specol_id"
    t.integer  "user_id"
    t.boolean  "speadmins",     default: false
    t.boolean  "leavemessages", default: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "leavemessages", force: true do |t|
    t.string   "message"
    t.string   "comment"
    t.integer  "user_id"
    t.integer  "specol_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "speadmins", force: true do |t|
    t.integer  "specol_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "speadmins", ["specol_id", "created_at"], name: "index_speadmins_on_specol_id_and_created_at", using: :btree
  add_index "speadmins", ["user_id"], name: "index_speadmins_on_user_id", using: :btree

  create_table "specols", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.boolean  "modify",     default: true
  end

  add_index "specols", ["user_id", "created_at"], name: "index_specols_on_user_id_and_created_at", using: :btree

  create_table "spepages", force: true do |t|
    t.string   "pagename"
    t.integer  "specol_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "spepages", ["specol_id", "created_at"], name: "index_spepages_on_specol_id_and_created_at", using: :btree

  create_table "users", force: true do |t|
    t.string   "username"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
    t.string   "password_digest"
    t.integer  "integral1"
    t.integer  "integral2"
    t.integer  "integral3"
    t.integer  "integral4"
    t.integer  "integral5"
    t.integer  "integral6"
    t.string   "remember_token"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["remember_token"], name: "index_users_on_remember_token", using: :btree

end
