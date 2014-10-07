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

ActiveRecord::Schema.define(version: 20140901102444) do

  create_table "carts", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "coupons", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "order_deliveries", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "order_items", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_image_albums", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.integer  "category_id"
    t.string   "product_name",  limit: 25
    t.float    "price"
    t.integer  "qty"
    t.boolean  "sale_for"
    t.string   "product_desc",  limit: 150
    t.string   "product_image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "purchase_products", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "registers", force: true do |t|
    t.string   "first_name",      limit: 25
    t.string   "last_name",       limit: 50
    t.string   "username",        limit: 25
    t.string   "password_digest"
    t.string   "email"
    t.string   "role",                       default: "User"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subcategories", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_registrations", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "visited_users", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
