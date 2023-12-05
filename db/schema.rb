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

ActiveRecord::Schema.define(version: 2023_12_02_221939) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "address_types", force: :cascade do |t|
    t.string "address_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "addresses", force: :cascade do |t|
    t.string "address_name"
    t.string "number"
    t.string "cep"
    t.string "neighborhood"
    t.string "municipality"
    t.string "city"
    t.bigint "people_id", null: false
    t.bigint "address_type_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["address_type_id"], name: "index_addresses_on_address_type_id"
    t.index ["people_id"], name: "index_addresses_on_people_id"
  end

  create_table "brand_types", force: :cascade do |t|
    t.string "brand_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "car_models", force: :cascade do |t|
    t.string "model_names"
    t.string "color"
    t.integer "number_doors"
    t.string "plate"
    t.string "renavam"
    t.string "chassis"
    t.string "country_origin"
    t.bigint "brand_type_id", null: false
    t.bigint "platform_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["brand_type_id"], name: "index_car_models_on_brand_type_id"
    t.index ["platform_id"], name: "index_car_models_on_platform_id"
  end

  create_table "card_types", force: :cascade do |t|
    t.string "card_type_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "document_types", force: :cascade do |t|
    t.string "document_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "documents", force: :cascade do |t|
    t.bigint "people_id", null: false
    t.bigint "document_type_id", null: false
    t.string "number_document"
    t.date "expiration_date"
    t.date "emission_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["document_type_id"], name: "index_documents_on_document_type_id"
    t.index ["people_id"], name: "index_documents_on_people_id"
  end

  create_table "leasing_cars", force: :cascade do |t|
    t.bigint "leasing_type_id", null: false
    t.date "date_leasing"
    t.date "return_date"
    t.string "leasing_value"
    t.bigint "payment_method_id", null: false
    t.bigint "payment_cards_id", null: false
    t.integer "number"
    t.string "cvv"
    t.date "due_date"
    t.string "cardholder_name"
    t.string "personal_iden_number"
    t.bigint "car_model_id", null: false
    t.bigint "people_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["car_model_id"], name: "index_leasing_cars_on_car_model_id"
    t.index ["leasing_type_id"], name: "index_leasing_cars_on_leasing_type_id"
    t.index ["payment_cards_id"], name: "index_leasing_cars_on_payment_cards_id"
    t.index ["payment_method_id"], name: "index_leasing_cars_on_payment_method_id"
    t.index ["people_id"], name: "index_leasing_cars_on_people_id"
  end

  create_table "leasing_types", force: :cascade do |t|
    t.string "leasing_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "payment_cards", force: :cascade do |t|
    t.string "card_network"
    t.bigint "card_type_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["card_type_id"], name: "index_payment_cards_on_card_type_id"
  end

  create_table "payment_methods", force: :cascade do |t|
    t.string "payment_method"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.string "last_name"
    t.string "telephone"
    t.date "birth_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "platforms", force: :cascade do |t|
    t.string "platform_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at", precision: 6
    t.datetime "remember_created_at", precision: 6
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "login", default: "", null: false
    t.bigint "people_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["login"], name: "index_users_on_login", unique: true
    t.index ["people_id"], name: "index_users_on_people_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "addresses", "address_types"
  add_foreign_key "addresses", "people", column: "people_id"
  add_foreign_key "car_models", "brand_types"
  add_foreign_key "car_models", "platforms"
  add_foreign_key "documents", "document_types"
  add_foreign_key "documents", "people", column: "people_id"
  add_foreign_key "leasing_cars", "car_models"
  add_foreign_key "leasing_cars", "leasing_types"
  add_foreign_key "leasing_cars", "payment_cards", column: "payment_cards_id"
  add_foreign_key "leasing_cars", "payment_methods"
  add_foreign_key "leasing_cars", "people", column: "people_id"
  add_foreign_key "payment_cards", "card_types"
  add_foreign_key "users", "people", column: "people_id"
end
