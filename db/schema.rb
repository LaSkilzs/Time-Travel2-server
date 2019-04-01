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

ActiveRecord::Schema.define(version: 2019_04_01_214645) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "applications", force: :cascade do |t|
    t.string "job_title"
    t.string "work_location"
    t.string "status", default: "applied"
    t.boolean "citizenship", default: false
    t.boolean "parent_union", default: false
    t.boolean "parent_trade", default: false
    t.boolean "entreprenuership", default: false
    t.boolean "work_with_others", default: false
    t.boolean "monotous_task", default: false
    t.boolean "work_life_balance", default: false
    t.boolean "work_environment", default: false
    t.boolean "too_many_hours", default: false
    t.integer "app_score", default: 65
    t.bigint "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "helpwanted_id"
    t.index ["helpwanted_id"], name: "index_applications_on_helpwanted_id"
    t.index ["profile_id"], name: "index_applications_on_profile_id"
  end

  create_table "fun_facts", force: :cascade do |t|
    t.string "fact_length"
    t.text "fact"
    t.bigint "generation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["generation_id"], name: "index_fun_facts_on_generation_id"
  end

  create_table "generations", force: :cascade do |t|
    t.string "nickname"
    t.string "description"
    t.text "story"
    t.integer "decade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "helpwanteds", force: :cascade do |t|
    t.string "location"
    t.string "image"
    t.float "wage_per_week"
    t.boolean "housing_offered"
    t.boolean "female"
    t.bigint "job_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_id"], name: "index_helpwanteds_on_job_id"
  end

  create_table "industries", force: :cascade do |t|
    t.string "name"
    t.text "summary"
    t.integer "available_jobs"
    t.bigint "generation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
    t.index ["generation_id"], name: "index_industries_on_generation_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.string "name"
    t.string "experience"
    t.string "work_environment"
    t.string "age"
    t.string "gender"
    t.string "travel"
    t.string "start_avg_wage_per_week"
    t.string "end_avg_wage_per_week"
    t.string "days_of_week"
    t.string "education"
    t.text "job_description"
    t.integer "low_hours_of_work"
    t.integer "high_hours_of_work"
    t.integer "job_openings"
    t.integer "job_score"
    t.boolean "apprenticeship"
    t.bigint "industry_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["industry_id"], name: "index_jobs_on_industry_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "name"
    t.string "age"
    t.string "gender"
    t.string "ethnicity", default: "no response"
    t.string "religion", default: "no response"
    t.string "marital_status"
    t.string "education"
    t.date "available_for_work"
    t.string "experience"
    t.string "avatar", default: "https://cdn1.vectorstock.com/i/thumb-large/82/55/anonymous-user-circle-icon-vector-18958255.jpg"
    t.boolean "trade", default: false
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "applications", "helpwanteds"
  add_foreign_key "applications", "profiles"
  add_foreign_key "fun_facts", "generations"
  add_foreign_key "helpwanteds", "jobs"
  add_foreign_key "industries", "generations"
  add_foreign_key "jobs", "industries"
  add_foreign_key "profiles", "users"
end
