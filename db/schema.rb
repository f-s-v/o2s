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

ActiveRecord::Schema.define(version: 20141221124058) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "essential_selling_charachteristic_option_translations", force: true do |t|
    t.integer  "essential_selling_charachteristic_option_id", null: false
    t.string   "locale",                                      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
  end

  add_index "essential_selling_charachteristic_option_translations", ["essential_selling_charachteristic_option_id"], name: "index_15abf64756079070a6c0b148a91051ba706c5c7f", using: :btree
  add_index "essential_selling_charachteristic_option_translations", ["locale"], name: "index_817ce20370f40b1e9d181e3981e7018aca67c018", using: :btree

  create_table "essential_selling_charachteristic_options", force: true do |t|
    t.integer  "charachteristic_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "essential_selling_charachteristic_options", ["charachteristic_id"], name: "index_es_charachteristic_options_on_charachteristic_id", using: :btree

  create_table "essential_selling_charachteristic_options_product_photos", id: false, force: true do |t|
    t.integer "photo_id"
    t.integer "option_id"
  end

  add_index "essential_selling_charachteristic_options_product_photos", ["option_id"], name: "es_charachteristic_options_photos_on_option_id", using: :btree
  add_index "essential_selling_charachteristic_options_product_photos", ["photo_id"], name: "es_charachteristic_options_photos_on_photo_id", using: :btree

  create_table "essential_selling_charachteristic_options_product_variants", id: false, force: true do |t|
    t.integer "variant_id"
    t.integer "option_id"
  end

  add_index "essential_selling_charachteristic_options_product_variants", ["option_id"], name: "index_es_charachteristic_options_product_variants_on_option", using: :btree
  add_index "essential_selling_charachteristic_options_product_variants", ["variant_id"], name: "index_es_charachteristic_options_products_variants_on_product", using: :btree

  create_table "essential_selling_charachteristic_translations", force: true do |t|
    t.integer  "essential_selling_charachteristic_id", null: false
    t.string   "locale",                               null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
  end

  add_index "essential_selling_charachteristic_translations", ["essential_selling_charachteristic_id"], name: "index_0ef091760dcd591a07ca961970b7ed6061d44f9a", using: :btree
  add_index "essential_selling_charachteristic_translations", ["locale"], name: "index_essential_selling_charachteristic_translations_on_locale", using: :btree

  create_table "essential_selling_charachteristics", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "essential_selling_order_items", force: true do |t|
    t.integer  "order_id"
    t.integer  "count",                              default: 1
    t.decimal  "price",      precision: 8, scale: 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "essential_selling_order_items", ["order_id"], name: "index_essential_selling_order_items_on_order_id", using: :btree

  create_table "essential_selling_order_items_charachteristic_options", id: false, force: true do |t|
    t.integer "item_id"
    t.integer "option_id"
  end

  add_index "essential_selling_order_items_charachteristic_options", ["item_id"], name: "index_es_items_options_on_item_id", using: :btree
  add_index "essential_selling_order_items_charachteristic_options", ["option_id"], name: "index_es_items_options_on_option_id", using: :btree

  create_table "essential_selling_order_items_product_extras", id: false, force: true do |t|
    t.integer "order_id"
    t.integer "extra_id"
  end

  add_index "essential_selling_order_items_product_extras", ["extra_id"], name: "index_essential_selling_order_items_product_extras_on_extra_id", using: :btree
  add_index "essential_selling_order_items_product_extras", ["order_id"], name: "index_essential_selling_order_items_product_extras_on_order_id", using: :btree

  create_table "essential_selling_orders", force: true do |t|
    t.string   "shipping_country_code"
    t.string   "shipping_name"
    t.string   "shipping_address_line1"
    t.string   "shipping_address_line2"
    t.string   "shipping_city"
    t.string   "shipping_state"
    t.string   "shipping_zip"
    t.string   "phone_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "essential_selling_orders", ["shipping_country_code"], name: "index_essential_selling_orders_on_shipping_country_code", using: :btree

  create_table "essential_selling_product_extra_translations", force: true do |t|
    t.integer  "essential_selling_product_extra_id", null: false
    t.string   "locale",                             null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
    t.text     "info"
  end

  add_index "essential_selling_product_extra_translations", ["essential_selling_product_extra_id"], name: "index_4a023d6f1bea25f7f3b5d27911ca033112039972", using: :btree
  add_index "essential_selling_product_extra_translations", ["locale"], name: "index_essential_selling_product_extra_translations_on_locale", using: :btree

  create_table "essential_selling_product_extras", force: true do |t|
    t.decimal  "adds_value", precision: 8, scale: 2
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "essential_selling_product_extras", ["product_id"], name: "index_es_product_extras_on_product_id", using: :btree

  create_table "essential_selling_product_photos", force: true do |t|
    t.string   "url"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "essential_selling_product_photos", ["product_id"], name: "index_essential_selling_product_photos_on_product_id", using: :btree

  create_table "essential_selling_product_translations", force: true do |t|
    t.integer  "essential_selling_product_id", null: false
    t.string   "locale",                       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
    t.text     "info"
  end

  add_index "essential_selling_product_translations", ["essential_selling_product_id"], name: "index_90153dbf062330668dec7b8899d85206b377bf10", using: :btree
  add_index "essential_selling_product_translations", ["locale"], name: "index_essential_selling_product_translations_on_locale", using: :btree

  create_table "essential_selling_product_variants", force: true do |t|
    t.integer  "in_stock",   default: 0
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "essential_selling_product_variants", ["product_id"], name: "index_essential_selling_product_variants_on_product_id", using: :btree

  create_table "essential_selling_products", force: true do |t|
    t.string   "slug"
    t.boolean  "published",                              default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "price",          precision: 8, scale: 2
    t.string   "poster"
    t.boolean  "allow_preorder"
  end

  create_table "essential_selling_products_taxons", id: false, force: true do |t|
    t.integer "product_id"
    t.integer "taxon_id"
  end

  add_index "essential_selling_products_taxons", ["product_id"], name: "index_es_products_taxons_on_product_id", using: :btree
  add_index "essential_selling_products_taxons", ["taxon_id"], name: "index_es_products_taxons_on_taxon_id", using: :btree

  create_table "essential_selling_showcase_block_translations", force: true do |t|
    t.integer  "essential_selling_showcase_block_id", null: false
    t.string   "locale",                              null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
    t.text     "subtitle"
    t.text     "text"
    t.string   "link_text"
  end

  add_index "essential_selling_showcase_block_translations", ["essential_selling_showcase_block_id"], name: "index_a544b913e17d690290412fbefbc8e9605e4f5823", using: :btree
  add_index "essential_selling_showcase_block_translations", ["locale"], name: "index_essential_selling_showcase_block_translations_on_locale", using: :btree

  create_table "essential_selling_showcase_blocks", force: true do |t|
    t.string   "style"
    t.string   "images"
    t.string   "link"
    t.string   "video_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "essential_selling_taxon_translations", force: true do |t|
    t.integer  "essential_selling_taxon_id", null: false
    t.string   "locale",                     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
  end

  add_index "essential_selling_taxon_translations", ["essential_selling_taxon_id"], name: "index_11da2e9fa1fe41f8ee5c93c71db8eab2f5b8d888", using: :btree
  add_index "essential_selling_taxon_translations", ["locale"], name: "index_essential_selling_taxon_translations_on_locale", using: :btree

  create_table "essential_selling_taxons", force: true do |t|
    t.integer  "parent_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "essential_selling_taxons", ["parent_id"], name: "index_essential_selling_taxons_on_parent_id", using: :btree

end
