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

ActiveRecord::Schema.define(version: 2020_06_22_162723) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "academic_years", force: :cascade do |t|
    t.string "title"
    t.string "grade"
    t.bigint "qualification_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["qualification_id"], name: "index_academic_years_on_qualification_id"
  end

  create_table "educations", force: :cascade do |t|
    t.string "unit"
    t.string "grade"
    t.string "description"
    t.bigint "academic_year_id"
    t.index ["academic_year_id"], name: "index_educations_on_academic_year_id"
  end

  create_table "gallaries", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "highlights", force: :cascade do |t|
    t.string "title"
    t.string "organisation"
    t.date "start_date"
    t.date "end_date"
    t.string "description"
    t.string "url"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "title"
    t.string "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "friendly_name"
    t.string "url"
    t.string "position"
  end

  create_table "qualifications", force: :cascade do |t|
    t.string "title"
    t.string "organisation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "socials", force: :cascade do |t|
    t.string "friendly_name"
    t.string "url"
    t.string "icon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "display"
    t.string "position"
  end

  create_table "tags", force: :cascade do |t|
    t.string "tag"
    t.string "colour"
    t.bigint "education_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["education_id"], name: "index_tags_on_education_id"
  end

  create_table "tools", force: :cascade do |t|
    t.string "tool"
    t.string "colour"
    t.string "status"
    t.string "icon_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
