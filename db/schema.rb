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

ActiveRecord::Schema.define(version: 20161212015214) do

  create_table "accelerometers", force: :cascade do |t|
    t.integer  "time",       limit: 8
    t.float    "x"
    t.float    "y"
    t.float    "z"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "patient_id"
    t.index ["patient_id"], name: "index_accelerometers_on_patient_id"
  end

  create_table "api_keys", force: :cascade do |t|
    t.string   "access_token"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "heartrates", force: :cascade do |t|
    t.integer  "patient_id"
    t.integer  "patient_num"
    t.float    "value"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "time",        limit: 8
    t.index ["patient_id"], name: "index_heartrates_on_patient_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "patient_num"
    t.index ["patient_num"], name: "index_patients_on_patient_num", unique: true
  end

  create_table "patients_users", force: :cascade do |t|
    t.integer "patient_id"
    t.integer "user_id"
    t.index ["patient_id"], name: "index_patients_users_on_patient_id"
    t.index ["user_id"], name: "index_patients_users_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
