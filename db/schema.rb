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

ActiveRecord::Schema.define(version: 20170115190309) do

  create_table "commute_modes", force: true do |t|
    t.string "mode"
  end

  create_table "commutefit_submissions", force: true do |t|
    t.string   "month"
    t.integer  "year"
    t.integer  "miles_biked"
    t.integer  "miles_walked"
    t.integer  "miles_ran"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "commutefit_submissions_users", force: true do |t|
    t.integer "user_id"
    t.integer "commutefit_submission_id"
  end

  create_table "employers", force: true do |t|
    t.string "name"
  end

  create_table "programs", force: true do |t|
    t.string "name"
    t.text   "description"
    t.string "slug"
  end

  create_table "user_commute_modes", force: true do |t|
    t.integer "commute_mode_id"
    t.integer "user_id"
  end

  create_table "user_programs", force: true do |t|
    t.integer "program_id"
    t.integer "user_id"
  end

  create_table "users", force: true do |t|
    t.string   "password_digest"
    t.string   "status"
    t.string   "address"
    t.string   "apt"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.integer  "phone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "employer_id"
  end

end
