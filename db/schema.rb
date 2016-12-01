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

ActiveRecord::Schema.define(version: 20161113194506) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "advertisements", force: :cascade do |t|
    t.string   "address"
    t.string   "number"
    t.string   "neighborhood"
    t.string   "zip_code"
    t.string   "name"
    t.string   "description"
    t.string   "phone_number"
    t.string   "cel_phone"
    t.string   "link_site"
    t.string   "link_facebook"
    t.string   "highlights_duration"
    t.integer  "city_id"
    t.integer  "category_id"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.boolean  "status",              default: true
    t.boolean  "highlights"
    t.datetime "highlights_initial"
  end

  add_index "advertisements", ["category_id"], name: "index_advertisements_on_category_id", using: :btree
  add_index "advertisements", ["city_id"], name: "index_advertisements_on_city_id", using: :btree

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "icon"
  end

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.integer  "province_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "cities", ["province_id"], name: "index_cities_on_province_id", using: :btree

  create_table "images", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "advertisement_id"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.boolean  "cover"
  end

  add_index "images", ["advertisement_id"], name: "index_images_on_advertisement_id", using: :btree

  create_table "provinces", force: :cascade do |t|
    t.string   "name"
    t.string   "acronym"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "table_pushes", force: :cascade do |t|
    t.string   "token"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",            null: false
    t.string   "email",           null: false
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "advertisements", "categories"
  add_foreign_key "advertisements", "cities"
  add_foreign_key "cities", "provinces"
  add_foreign_key "images", "advertisements"
end
