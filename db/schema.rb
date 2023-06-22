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

ActiveRecord::Schema[7.0].define(version: 2023_06_22_033718) do
  create_table "animal", charset: "utf8mb3", force: :cascade do |t|
    t.float "age"
    t.string "color"
    t.string "weight"
    t.string "species"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "owner", charset: "utf8mb3", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.float "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pet", charset: "utf8mb3", force: :cascade do |t|
    t.string "name"
    t.datetime "adoption_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "owner_id"
    t.bigint "animal_id"
    t.index ["animal_id"], name: "index_pet_on_animal_id"
    t.index ["owner_id"], name: "index_pet_on_owner_id"
  end

  add_foreign_key "pet", "animal"
  add_foreign_key "pet", "owner"
end
