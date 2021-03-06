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

ActiveRecord::Schema.define(version: 20171228185349) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "internets", force: :cascade do |t|
    t.string "number_computers"
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone"
    t.string "best_time"
    t.string "best_way"
    t.string "business_name"
    t.string "business_phone"
    t.string "street_address_1"
    t.string "street_address_2"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.boolean "interested"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "want_internet"
    t.boolean "want_television"
    t.boolean "want_phone"
    t.integer "number_televisions"
    t.integer "number_phones"
    t.integer "provider_id"
    t.string "other_provider"
    t.integer "referrer_id", default: 9999
    t.string "other_referrer", default: "None"
  end

  create_table "providers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "zorder", default: 0
  end

  create_table "referrers", force: :cascade do |t|
    t.string "name"
    t.integer "zorder"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "resellers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone"
    t.string "best_time"
    t.string "best_way"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

  create_table "voips", force: :cascade do |t|
    t.string "phone_choice"
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone"
    t.string "business_name"
    t.string "street_address_1"
    t.string "street_address_2"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "best_time"
    t.string "best_way"
    t.boolean "also_interested"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "quantity_vvx401", default: 0
    t.string "business_phone"
    t.integer "quantity_vvx301", default: 0
    t.integer "referrer_id", default: 9999
    t.string "other_referrer", default: "None"
  end

end
