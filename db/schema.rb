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

ActiveRecord::Schema.define(version: 20141013130036) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "domains", force: :cascade do |t|
    t.string   "label"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.boolean  "active"
    t.text     "linked_in_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "notes"
    t.string   "email"
    t.string   "phone"
    t.string   "twitter_url"
    t.string   "facebook_url"
    t.string   "google_plus_url"
    t.boolean  "author"
    t.string   "author_url_1"
    t.string   "author_url_2"
    t.string   "author_url_3"
    t.boolean  "speaker"
    t.string   "speaker_url_1"
    t.string   "speaker_url_2"
    t.string   "speaker_url_3"
    t.boolean  "teacher"
    t.string   "teacher_schools"
    t.boolean  "open_source"
    t.string   "open_source_url_1"
    t.string   "open_source_url_2"
    t.string   "open_source_url_3"
    t.boolean  "someone_else"
    t.string   "sender_email"
    t.text     "imported_skills"
    t.string   "picture"
    t.string   "last_position"
  end

  create_table "profiles_skills", id: false, force: :cascade do |t|
    t.integer "profile_id"
    t.integer "skill_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string   "label"
    t.integer  "domain_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sponsors", force: :cascade do |t|
    t.string   "name"
    t.string   "url"
    t.string   "logo"
    t.integer  "rank"
    t.float    "order"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
