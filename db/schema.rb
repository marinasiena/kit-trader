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

ActiveRecord::Schema.define(version: 2017031304) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clubs", force: :cascade do |t|
    t.string   "long_name"
    t.string   "short_name"
    t.string   "location"
    t.string   "image"
    t.integer  "kits_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["kits_id"], name: "index_clubs_on_kits_id", using: :btree
  end

  create_table "items", force: :cascade do |t|
    t.string   "item_type"
    t.string   "size"
    t.integer  "number"
    t.string   "color"
    t.string   "condition"
    t.integer  "kit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["kit_id"], name: "index_items_on_kit_id", using: :btree
  end

  create_table "kits", force: :cascade do |t|
    t.string   "trans_type"
    t.integer  "price"
    t.integer  "zip_code"
    t.string   "league"
    t.string   "season"
    t.string   "comment"
    t.integer  "user_id"
    t.integer  "club_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["club_id"], name: "index_kits_on_club_id", using: :btree
    t.index ["user_id"], name: "index_kits_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.string   "email"
    t.string   "phone"
    t.string   "image"
    t.integer  "kits_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["kits_id"], name: "index_users_on_kits_id", using: :btree
  end

  add_foreign_key "items", "kits", on_delete: :cascade
  add_foreign_key "kits", "clubs", on_delete: :cascade
  add_foreign_key "kits", "users", on_delete: :cascade
end
