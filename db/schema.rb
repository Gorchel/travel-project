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

ActiveRecord::Schema.define(version: 20150806112548) do

  create_table "castles", force: :cascade do |t|
    t.string   "name"
    t.string   "century"
    t.integer  "region_id"
    t.integer  "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "castles", ["city_id"], name: "index_castles_on_city_id"
  add_index "castles", ["region_id"], name: "index_castles_on_region_id"

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.integer  "region_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "cities", ["region_id"], name: "index_cities_on_region_id"

  create_table "museums", force: :cascade do |t|
    t.string   "name"
    t.string   "century"
    t.integer  "region_id"
    t.integer  "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "museums", ["city_id"], name: "index_museums_on_city_id"
  add_index "museums", ["region_id"], name: "index_museums_on_region_id"

  create_table "natures", force: :cascade do |t|
    t.string   "name"
    t.string   "century"
    t.integer  "region_id"
    t.integer  "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "natures", ["city_id"], name: "index_natures_on_city_id"
  add_index "natures", ["region_id"], name: "index_natures_on_region_id"

  create_table "other_architectures", force: :cascade do |t|
    t.string   "name"
    t.string   "century"
    t.integer  "region_id"
    t.integer  "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "other_architectures", ["city_id"], name: "index_other_architectures_on_city_id"
  add_index "other_architectures", ["region_id"], name: "index_other_architectures_on_region_id"

  create_table "palaces", force: :cascade do |t|
    t.string   "name"
    t.string   "century"
    t.integer  "region_id"
    t.integer  "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "palaces", ["city_id"], name: "index_palaces_on_city_id"
  add_index "palaces", ["region_id"], name: "index_palaces_on_region_id"

  create_table "people", force: :cascade do |t|
    t.string   "name"
    t.string   "about"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "regions", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "routes", force: :cascade do |t|
    t.string   "name"
    t.integer  "region_id"
    t.string   "about"
    t.string   "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "routes", ["region_id"], name: "index_routes_on_region_id"

  create_table "stones", force: :cascade do |t|
    t.string   "name"
    t.string   "century"
    t.integer  "region_id"
    t.integer  "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "stones", ["city_id"], name: "index_stones_on_city_id"
  add_index "stones", ["region_id"], name: "index_stones_on_region_id"

  create_table "traditions", force: :cascade do |t|
    t.string   "name"
    t.integer  "region_id"
    t.string   "about"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "traditions", ["region_id"], name: "index_traditions_on_region_id"

  create_table "woodens", force: :cascade do |t|
    t.string   "name"
    t.string   "century"
    t.integer  "region_id"
    t.integer  "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "woodens", ["city_id"], name: "index_woodens_on_city_id"
  add_index "woodens", ["region_id"], name: "index_woodens_on_region_id"

end
