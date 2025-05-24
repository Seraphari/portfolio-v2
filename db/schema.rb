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

ActiveRecord::Schema[7.0].define(version: 2025_05_24_043744) do
  create_table "certifications", force: :cascade do |t|
    t.integer "role_id", null: false
    t.string "company_name", null: false
    t.string "starting_year", null: false
    t.string "ending_year", null: false
    t.text "certification_summary_1", null: false
    t.text "certification_summary_2", null: false
    t.text "certification_summary_3", null: false
    t.text "certification_summary_4"
    t.text "certification_summary_5"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role_id"], name: "index_certifications_on_role_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.string "name"
    t.string "email", null: false
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "project_businesses", force: :cascade do |t|
    t.integer "project_id", null: false
    t.text "biz_summary_1", null: false
    t.text "biz_summary_2", null: false
    t.text "biz_summary_3", null: false
    t.text "biz_summary_4"
    t.text "biz_summary_5"
    t.text "biz_intro", null: false
    t.text "problem_statement", null: false
    t.text "recommended_solutions", null: false
    t.text "stakeholder_engagement", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_project_businesses_on_project_id", unique: true
  end

  create_table "project_designs", force: :cascade do |t|
    t.integer "project_id", null: false
    t.text "design_summary_1", null: false
    t.text "design_summary_2", null: false
    t.text "design_summary_3", null: false
    t.text "design_summary_4"
    t.text "design_summary_5"
    t.text "design_principles", null: false
    t.text "user_experience_design", null: false
    t.text "user_interface", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_project_designs_on_project_id", unique: true
  end

  create_table "project_technologies", force: :cascade do |t|
    t.integer "project_id", null: false
    t.text "tech_summary_1", null: false
    t.text "tech_summary_2", null: false
    t.text "tech_summary_3", null: false
    t.text "tech_summary_4"
    t.text "tech_summary_5"
    t.text "tech_intro", null: false
    t.text "system_architecture", null: false
    t.text "development_approach", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_project_technologies_on_project_id", unique: true
  end

  create_table "projects", force: :cascade do |t|
    t.string "project_title"
    t.string "project_summary"
    t.string "project_client"
    t.string "project_role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "starting_date", null: false
    t.string "ending_date", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "role_name"
    t.text "role_description", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "certifications", "roles"
  add_foreign_key "project_businesses", "projects"
  add_foreign_key "project_designs", "projects"
  add_foreign_key "project_technologies", "projects"
end
