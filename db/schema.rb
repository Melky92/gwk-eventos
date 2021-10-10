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

ActiveRecord::Schema.define(version: 2021_10_09_221130) do

  create_table "event_statuses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.date "date"
    t.integer "reach_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "event_statuses_id", null: false
    t.string "link"
    t.integer "ruling_id", null: false
    t.integer "game_id", null: false
    t.index ["event_statuses_id"], name: "index_events_on_event_statuses_id"
    t.index ["game_id"], name: "index_events_on_game_id"
    t.index ["reach_id"], name: "index_events_on_reach_id"
    t.index ["ruling_id"], name: "index_events_on_ruling_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "player_events", force: :cascade do |t|
    t.integer "player_id", null: false
    t.integer "event_id", null: false
    t.integer "prize_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "place"
    t.index ["event_id"], name: "index_player_events_on_event_id"
    t.index ["player_id"], name: "index_player_events_on_player_id"
    t.index ["prize_id"], name: "index_player_events_on_prize_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.string "nick"
    t.integer "team_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["team_id"], name: "index_players_on_team_id"
  end

  create_table "prizes", force: :cascade do |t|
    t.string "name"
    t.integer "place"
    t.integer "event_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["event_id"], name: "index_prizes_on_event_id"
  end

  create_table "reaches", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rulings", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "players"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "events", "event_statuses", column: "event_statuses_id"
  add_foreign_key "events", "games"
  add_foreign_key "events", "reaches"
  add_foreign_key "events", "rulings"
  add_foreign_key "player_events", "events"
  add_foreign_key "player_events", "players"
  add_foreign_key "player_events", "prizes"
  add_foreign_key "players", "teams"
  add_foreign_key "prizes", "events"
end
