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

ActiveRecord::Schema.define(version: 20150207175049) do

  create_table "modifiers", force: :cascade do |t|
    t.string   "name"
    t.float    "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_audirs", force: :cascade do |t|
    t.integer  "order_id"
    t.datetime "datetime"
    t.string   "status_from"
    t.string   "status_to"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "order_audirs", ["order_id"], name: "index_order_audirs_on_order_id"

  create_table "order_audits", force: :cascade do |t|
    t.integer  "order_id"
    t.datetime "datetime"
    t.string   "status_from"
    t.string   "status_to"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "order_audits", ["order_id"], name: "index_order_audits_on_order_id"

  create_table "order_line_modifiers", force: :cascade do |t|
    t.integer  "order_line_id"
    t.integer  "modifier_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "order_line_modifiers", ["modifier_id"], name: "index_order_line_modifiers_on_modifier_id"
  add_index "order_line_modifiers", ["order_line_id"], name: "index_order_line_modifiers_on_order_line_id"

  create_table "order_lines", force: :cascade do |t|
    t.integer  "order_id"
    t.integer  "product_id"
    t.integer  "quantity_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "order_lines", ["order_id"], name: "index_order_lines_on_order_id"
  add_index "order_lines", ["product_id"], name: "index_order_lines_on_product_id"
  add_index "order_lines", ["quantity_id"], name: "index_order_lines_on_quantity_id"

  create_table "orders", force: :cascade do |t|
    t.string   "status"
    t.integer  "table_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "orders", ["table_id"], name: "index_orders_on_table_id"

  create_table "payment_audits", force: :cascade do |t|
    t.integer  "payment_id"
    t.float    "amount_from"
    t.float    "amount_to"
    t.string   "payment_type_from"
    t.string   "payment_type_to"
    t.datetime "datetime"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "payment_audits", ["payment_id"], name: "index_payment_audits_on_payment_id"

  create_table "payments", force: :cascade do |t|
    t.integer  "order_id"
    t.float    "amount"
    t.string   "payment_type"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "payments", ["order_id"], name: "index_payments_on_order_id"

  create_table "product_modifiers", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "modifier_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "product_modifiers", ["modifier_id"], name: "index_product_modifiers_on_modifier_id"
  add_index "product_modifiers", ["product_id"], name: "index_product_modifiers_on_product_id"

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.float    "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tables", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
