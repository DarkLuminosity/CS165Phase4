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

ActiveRecord::Schema.define(version: 2019_12_02_150044) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "highschools", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "sex"
    t.datetime "dateofbirth"
    t.bigint "cellphonenumber"
    t.string "address"
    t.integer "highschool_id", null: false
    t.integer "testcenter_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["highschool_id"], name: "index_students_on_highschool_id"
    t.index ["testcenter_id"], name: "index_students_on_testcenter_id"
  end

  create_table "testcenters", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "students", "highschools"
  add_foreign_key "students", "testcenters"
end
