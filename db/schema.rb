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

ActiveRecord::Schema[7.1].define(version: 2024_03_18_234619) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pgcrypto"
  enable_extension "plpgsql"

  create_table "cars", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "slug"
    t.string "brand"
    t.string "model"
    t.integer "year", default: 0
    t.string "color"
    t.integer "transmission", default: 0
    t.integer "category", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["slug"], name: "index_cars_on_slug", unique: true
  end

  create_table "helicopters", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "slug"
    t.string "brand"
    t.string "model"
    t.integer "year", default: 0
    t.string "color"
    t.integer "transmission", default: 0
    t.integer "category", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["slug"], name: "index_helicopters_on_slug", unique: true
  end

  create_table "motorbikes", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "slug"
    t.string "brand"
    t.string "model"
    t.integer "year", default: 0
    t.string "color"
    t.integer "transmission", default: 0
    t.integer "category", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["slug"], name: "index_motorbikes_on_slug", unique: true
  end

  create_table "pg_search_documents", force: :cascade do |t|
    t.text "content"
    t.string "searchable_type"
    t.uuid "searchable_id"
    t.string "uuid"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["searchable_type", "searchable_id"], name: "index_pg_search_documents_on_searchable"
  end

  create_table "planes", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "slug"
    t.string "brand"
    t.string "model"
    t.integer "year", default: 0
    t.string "color"
    t.integer "transmission", default: 0
    t.integer "category", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["slug"], name: "index_planes_on_slug", unique: true
  end

  create_table "ships", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "slug"
    t.string "brand"
    t.string "model"
    t.integer "year", default: 0
    t.string "color"
    t.integer "transmission", default: 0
    t.integer "category", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["slug"], name: "index_ships_on_slug", unique: true
  end

end
