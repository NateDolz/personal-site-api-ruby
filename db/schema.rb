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

ActiveRecord::Schema.define(version: 2022_01_05_184012) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  # Custom types defined in this database.
  # Note that some types may not work with other database engines. Be careful if changing database.
  create_enum "skill_type", ["language", "framework", "technology", "skill", "other"]

  create_table "educations", force: :cascade do |t|
    t.date "graduation"
    t.string "name"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "profile_id"
    t.index ["profile_id"], name: "index_educations_on_profile_id"
  end

  create_table "job_lines", force: :cascade do |t|
    t.bigint "job_id"
    t.text "line"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["job_id"], name: "index_job_lines_on_job_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.date "start"
    t.date "end"
    t.string "name"
    t.string "role"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "profile_id"
    t.index ["profile_id"], name: "index_jobs_on_profile_id"
  end

  create_table "profile_lines", force: :cascade do |t|
    t.bigint "profile_id"
    t.string "line"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["profile_id"], name: "index_profile_lines_on_profile_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.enum "skill_enum", enum_type: "skill_type"
    t.bigint "profile_id"
    t.index ["profile_id"], name: "index_skills_on_profile_id"
  end

  add_foreign_key "educations", "profiles"
  add_foreign_key "job_lines", "jobs"
  add_foreign_key "jobs", "profiles"
  add_foreign_key "profile_lines", "profiles"
  add_foreign_key "skills", "profiles"
end
