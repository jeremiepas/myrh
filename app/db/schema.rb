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

ActiveRecord::Schema.define(version: 20180718170934) do

  create_table "announces", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "city_id"
    t.integer  "compagny_id"
    t.date     "date"
    t.integer  "quiz_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["city_id"], name: "index_announces_on_city_id", using: :btree
    t.index ["compagny_id"], name: "index_announces_on_compagny_id", using: :btree
    t.index ["quiz_id"], name: "index_announces_on_quiz_id", using: :btree
  end

  create_table "cities", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.integer  "compagny_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["compagny_id"], name: "index_cities_on_compagny_id", using: :btree
  end

  create_table "compagnies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quizzes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.text     "question",   limit: 65535
    t.integer  "user_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["user_id"], name: "index_quizzes_on_user_id", using: :btree
  end

  create_table "responses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.integer  "announce_id"
    t.text     "answers",     limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["announce_id"], name: "index_responses_on_announce_id", using: :btree
    t.index ["user_id"], name: "index_responses_on_user_id", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.date    "birthdate"
    t.string  "lastname"
    t.string  "name"
    t.string  "password"
    t.text    "description", limit: 65535
    t.string  "email"
    t.integer "compagny_id"
    t.index ["compagny_id"], name: "index_users_on_compagny_id", using: :btree
  end

  add_foreign_key "announces", "cities"
  add_foreign_key "announces", "compagnies"
  add_foreign_key "announces", "quizzes"
  add_foreign_key "cities", "compagnies"
  add_foreign_key "quizzes", "users"
  add_foreign_key "responses", "announces"
  add_foreign_key "responses", "users"
  add_foreign_key "users", "compagnies"
end
