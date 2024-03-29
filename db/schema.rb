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

ActiveRecord::Schema[7.0].define(version: 2023_01_05_161548) do
  create_table "chats", force: :cascade do |t|
    t.string "message"
    t.string "user_id"
    t.string "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games", force: :cascade do |t|
    t.integer "white_player_id"
    t.integer "black_player_id"
    t.integer "winner"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "ongoing"
    t.string "latest_position"
    t.string "end_cause"
    t.integer "time"
    t.integer "increment_time"
  end

  create_table "histories", force: :cascade do |t|
    t.string "chess_game"
    t.integer "user1_id"
    t.integer "user1_rating"
    t.integer "user2_id"
    t.integer "user2_rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plies", force: :cascade do |t|
    t.integer "game_id"
    t.integer "move_index"
    t.string "color"
    t.string "move"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "time_remaining"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "display_name"
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "waitrooms", force: :cascade do |t|
    t.integer "player_id"
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "opponent"
    t.integer "time"
    t.integer "time_increment"
  end

end
