# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_08_26_215726) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.datetime "date_time"
    t.boolean "status"
    t.string "location"
    t.string "comments"
    t.bigint "customer_id", null: false
    t.bigint "musician_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "repertoire_number"
    t.index ["customer_id"], name: "index_bookings_on_customer_id"
    t.index ["musician_id"], name: "index_bookings_on_musician_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.string "phone_number"
    t.string "address"
    t.boolean "is_musician"
    t.string "photo"
    t.string "video"
    t.text "bio"
    t.integer "price"
    t.string "ensemble_type"
    t.string "instruments"
    t.string "facebook"
    t.string "youtube"
    t.string "website"
    t.string "instagram"
    t.string "repertoire_1"
    t.integer "repertoire_1_length"
    t.string "repertoire_2"
    t.integer "repertoire_2_length"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookings", "users", column: "customer_id"
  add_foreign_key "bookings", "users", column: "musician_id"
end
