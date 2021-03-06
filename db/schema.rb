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

ActiveRecord::Schema.define(version: 20140419005105) do

  create_table "activities", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "coordinator"
    t.integer  "tickets"
    t.boolean  "painted_sign"
    t.text     "shifts"
  end

  create_table "shifts", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "vols"
    t.integer  "activity_id"
    t.string   "title"
    t.integer  "volunteer_id"
    t.integer  "user_id"
  end

  add_index "shifts", ["activity_id"], name: "index_shifts_on_activity_id"
  add_index "shifts", ["user_id"], name: "index_shifts_on_user_id"
  add_index "shifts", ["volunteer_id"], name: "index_shifts_on_volunteer_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "volunteers", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "shift_id"
  end

end
