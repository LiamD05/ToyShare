# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_07_18_025800) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource"
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.string "street_address1"
    t.string "street_address2"
    t.string "city"
    t.string "state"
    t.string "zip_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "toy_reservations", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "toy_type_id", null: false
    t.boolean "fulfilled"
    t.datetime "start_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["toy_type_id"], name: "index_toy_reservations_on_toy_type_id"
    t.index ["user_id"], name: "index_toy_reservations_on_user_id"
  end

  create_table "toy_statuses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "toy_types", force: :cascade do |t|
    t.string "name"
    t.integer "min_age"
    t.integer "max_age"
    t.integer "weight"
    t.string "size"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "toys", force: :cascade do |t|
    t.bigint "toy_type_id", null: false
    t.bigint "toy_status_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["toy_status_id"], name: "index_toys_on_toy_status_id"
    t.index ["toy_type_id"], name: "index_toys_on_toy_type_id"
  end

  create_table "user_locations", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "location_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_user_locations_on_location_id"
    t.index ["user_id"], name: "index_user_locations_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "street_address1"
    t.string "street_address2"
    t.string "city"
    t.string "state"
    t.string "zip_code"
    t.boolean "admin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "toy_reservations", "toy_types"
  add_foreign_key "toy_reservations", "users"
  add_foreign_key "toys", "toy_statuses"
  add_foreign_key "toys", "toy_types"
  add_foreign_key "user_locations", "locations"
  add_foreign_key "user_locations", "users"
end
