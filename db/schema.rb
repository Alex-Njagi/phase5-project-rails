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

ActiveRecord::Schema.define(version: 2023_08_09_120019) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "access_tokens", force: :cascade do |t|
    t.string "token"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "farmer_produce_sales", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "produce_name"
    t.decimal "produce_unit_price"
    t.integer "produce_quantity"
    t.decimal "total_produce_sale"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "user_name"
    t.index ["user_id"], name: "index_farmer_produce_sales_on_user_id"
  end

  create_table "farmer_product_sales", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "farmer_product_id", null: false
    t.integer "quantity"
    t.integer "unit_price"
    t.integer "total_product_price"
    t.integer "sale_total"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "user_name"
    t.string "product_name"
    t.index ["farmer_product_id"], name: "index_farmer_product_sales_on_farmer_product_id"
    t.index ["user_id"], name: "index_farmer_product_sales_on_user_id"
  end

  create_table "farmer_products", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.string "image"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "farmer_trainings", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "user_name"
    t.date "training_date"
    t.decimal "registration_fee"
    t.integer "number_of_trainees"
    t.string "total_training_cost"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_farmer_trainings_on_user_id"
  end

  create_table "farming_lands", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "user_name"
    t.string "image"
    t.string "description"
    t.decimal "size_in_acres"
    t.string "status", default: "Unoccupied"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "owned_by", default: "Nobody"
    t.index ["user_id"], name: "index_farming_lands_on_user_id"
  end

  create_table "land_operations", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "user_name"
    t.bigint "farming_land_id", null: false
    t.decimal "land_size"
    t.string "land_description"
    t.string "type_of_operation"
    t.integer "operation_duration"
    t.decimal "cost_of_operation"
    t.decimal "total_operation_cost"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["farming_land_id"], name: "index_land_operations_on_farming_land_id"
    t.index ["user_id"], name: "index_land_operations_on_user_id"
  end

  create_table "mpesas", force: :cascade do |t|
    t.string "checkoutRequestID"
    t.string "merchantRequestID"
    t.string "amount"
    t.string "mpesaReceiptNumber"
    t.string "phoneNumber"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "public_client_product_sales", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "public_client_product_id", null: false
    t.string "user_name"
    t.string "product_name"
    t.integer "quantity"
    t.decimal "unit_price"
    t.decimal "total_product_price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["public_client_product_id"], name: "index_public_client_product_sales_on_public_client_product_id"
    t.index ["user_id"], name: "index_public_client_product_sales_on_user_id"
  end

  create_table "public_client_products", force: :cascade do |t|
    t.string "name"
    t.decimal "price"
    t.string "image"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "status"
    t.integer "group_number", default: 0
    t.string "location"
    t.string "phone_number"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "farmer_produce_sales", "users"
  add_foreign_key "farmer_product_sales", "farmer_products"
  add_foreign_key "farmer_product_sales", "users"
  add_foreign_key "farmer_trainings", "users"
  add_foreign_key "farming_lands", "users"
  add_foreign_key "land_operations", "farming_lands"
  add_foreign_key "land_operations", "users"
  add_foreign_key "public_client_product_sales", "public_client_products"
  add_foreign_key "public_client_product_sales", "users"
end
