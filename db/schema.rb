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

ActiveRecord::Schema.define(version: 20150613071710) do

  create_table "campuses", force: true do |t|
    t.string   "name"
    t.integer  "institution_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
  end

  add_index "campuses", ["institution_id"], name: "index_campuses_on_institution_id"
  add_index "campuses", ["slug"], name: "index_campuses_on_slug", unique: true

  create_table "foods", force: true do |t|
    t.text     "description"
    t.integer  "outlet_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "foods", ["outlet_id"], name: "index_foods_on_outlet_id"
  add_index "foods", ["user_id"], name: "index_foods_on_user_id"

  create_table "friendly_id_slugs", force: true do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"

  create_table "institutions", force: true do |t|
    t.string   "name"
    t.string   "website"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "outlets", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "website"
    t.string   "location"
    t.integer  "campus_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "outlets", ["campus_id"], name: "index_outlets_on_campus_id"

  create_table "users", force: true do |t|
    t.string   "first_name",                      null: false
    t.string   "last_name"
    t.string   "email",                           null: false
    t.string   "password_digest",                 null: false
    t.integer  "institution_id"
    t.boolean  "admin",           default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["institution_id"], name: "index_users_on_institution_id"

end
