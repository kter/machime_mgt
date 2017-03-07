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

ActiveRecord::Schema.define(version: 20170304041823) do

  create_table "employees", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pcs", force: :cascade do |t|
    t.integer  "classification"
    t.string   "name"
    t.string   "cpu"
    t.integer  "memory"
    t.integer  "disk_class"
    t.integer  "disk"
    t.string   "mac_address"
    t.string   "ip_address"
    t.integer  "employee_id"
    t.integer  "software_id"
    t.text     "note"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["employee_id"], name: "index_pcs_on_employee_id"
    t.index ["software_id"], name: "index_pcs_on_software_id"
  end

  create_table "preferences", force: :cascade do |t|
    t.string   "domain"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "softwares", force: :cascade do |t|
    t.string   "name"
    t.integer  "pc_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pc_id"], name: "index_softwares_on_pc_id"
  end

end
