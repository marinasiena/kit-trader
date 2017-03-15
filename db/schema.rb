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
    t.string   "comment"
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
    t.integer  "user_id"
    t.integer  "club_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["club_id"], name: "index_kits_on_club_id", using: :btree
    t.index ["user_id"], name: "index_kits_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "provider",               default: "email", null: false
    t.string   "uid",                    default: "",      null: false
    t.string   "encrypted_password",     default: "",      null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,       null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "image"
    t.integer  "kits_id"
    t.json     "tokens"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["kits_id"], name: "index_users_on_kits_id", using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true, using: :btree
  end

  add_foreign_key "items", "kits", on_delete: :cascade
  add_foreign_key "kits", "clubs", on_delete: :cascade
  add_foreign_key "kits", "users", on_delete: :cascade
end
