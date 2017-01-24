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

ActiveRecord::Schema.define(version: 20170124091940) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "aventures", force: :cascade do |t|
    t.string   "title"
    t.text     "aventure_text"
    t.string   "aventure_video"
    t.string   "aventure_audio"
    t.string   "aventure_portrait"
    t.string   "aventure_illu"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "aventure_portrait_file_name"
    t.string   "aventure_portrait_content_type"
    t.integer  "aventure_portrait_file_size"
    t.datetime "aventure_portrait_updated_at"
    t.text     "first_name"
    t.text     "last_name"
    t.integer  "age"
  end

  create_table "aventures_indefinitions", force: :cascade do |t|
    t.integer "aventure_id"
    t.integer "indefinition_id"
    t.index ["aventure_id"], name: "index_aventures_indefinitions_on_aventure_id", using: :btree
    t.index ["indefinition_id"], name: "index_aventures_indefinitions_on_indefinition_id", using: :btree
  end

  create_table "aventures_variables", force: :cascade do |t|
    t.integer "aventure_id"
    t.integer "variable_id"
    t.index ["aventure_id"], name: "index_aventures_variables_on_aventure_id", using: :btree
    t.index ["variable_id"], name: "index_aventures_variables_on_variable_id", using: :btree
  end

  create_table "indefinitions", force: :cascade do |t|
    t.string   "name"
    t.text     "def"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "indefinitions_variables", force: :cascade do |t|
    t.integer "indefinition_id"
    t.integer "variable_id"
    t.index ["indefinition_id"], name: "index_indefinitions_variables_on_indefinition_id", using: :btree
    t.index ["variable_id"], name: "index_indefinitions_variables_on_variable_id", using: :btree
  end

  create_table "variables", force: :cascade do |t|
    t.string   "name"
    t.text     "var_def"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
