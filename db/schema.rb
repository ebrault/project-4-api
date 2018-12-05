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

ActiveRecord::Schema.define(version: 2018_12_05_154037) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "collections", force: :cascade do |t|
    t.string "collection_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_collections_on_user_id"
  end

  create_table "comments", force: :cascade do |t|
    t.string "comment_body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "mix_id"
    t.bigint "user_id"
    t.index ["mix_id"], name: "index_comments_on_mix_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "examples", force: :cascade do |t|
    t.text "text", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_examples_on_user_id"
  end

  create_table "mixes", force: :cascade do |t|
    t.string "dj"
    t.string "title"
    t.string "mix_type"
    t.string "genre"
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_mixes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "token", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["token"], name: "index_users_on_token", unique: true
  end

  create_table "votes", force: :cascade do |t|
    t.integer "vote_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "mix_id"
    t.bigint "user_id"
    t.index ["mix_id"], name: "index_votes_on_mix_id"
    t.index ["user_id"], name: "index_votes_on_user_id"
  end

  add_foreign_key "collections", "users"
  add_foreign_key "comments", "mixes"
  add_foreign_key "comments", "users"
  add_foreign_key "examples", "users"
  add_foreign_key "mixes", "users"
  add_foreign_key "votes", "mixes"
  add_foreign_key "votes", "users"
end
