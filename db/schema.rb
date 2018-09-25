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

ActiveRecord::Schema.define(version: 20180924195148) do

  create_table "comments", force: :cascade do |t|
    t.integer "event_id"
    t.integer "player_id"
    t.string "comment_rate"
    t.text "comment_text"
    t.string "comment_temp1"
    t.string "comment_temp2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_comments_on_event_id"
    t.index ["player_id"], name: "index_comments_on_player_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "event_number"
    t.string "event_creator"
    t.string "event_name"
    t.string "event_squads", default: ""
    t.string "event_players", default: ""
    t.time "event_time"
    t.date "event_date"
    t.string "event_link", default: ""
    t.text "event_info", default: ""
    t.boolean "event_group", default: false
    t.boolean "event_active", default: true
  end

  create_table "faqs", force: :cascade do |t|
    t.string "question"
    t.string "question_caps"
    t.string "answer"
    t.string "link"
  end

  create_table "forums", force: :cascade do |t|
    t.string "forum_name"
    t.integer "forum_show_order", default: 1
    t.string "forum_temp1"
    t.string "forum_temp2"
    t.string "forum_temp3"
    t.string "forum_temp4"
  end

  create_table "players", force: :cascade do |t|
    t.integer "squad_id"
    t.string "player_email"
    t.string "player_id"
    t.string "player_nickname"
    t.string "player_nickname_color", default: "#FFFFFF"
    t.string "player_nickname_translit"
    t.string "player_password"
    t.string "player_avatar", default: "noavatar.png"
    t.string "player_rank", default: "Новичек"
    t.string "player_vk_link", default: ""
    t.string "player_discord_link", default: ""
    t.string "player_money_history", default: ""
    t.text "player_shop_history"
    t.text "player_cart"
    t.date "player_lastlogin"
    t.integer "player_wallet", default: 0
    t.text "player_info", default: ""
    t.text "player_admin_info", default: ""
    t.boolean "squad_leader", default: false
    t.boolean "player_first_edit", default: false
    t.boolean "player_activated", default: false
    t.boolean "player_admin", default: false
    t.boolean "player_banned", default: false
    t.boolean "player_welcome_bonus", default: false
    t.string "player_temp1"
    t.string "player_temp2"
    t.string "player_temp3"
    t.string "player_temp4"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_email"], name: "index_players_on_player_email"
    t.index ["player_id"], name: "index_players_on_player_id"
    t.index ["player_nickname_translit"], name: "index_players_on_player_nickname_translit"
    t.index ["squad_id"], name: "index_players_on_squad_id"
  end

  create_table "posts", force: :cascade do |t|
    t.integer "topic_id"
    t.integer "player_id"
    t.text "post_text"
    t.string "post_temp1"
    t.string "post_temp2"
    t.string "post_temp3"
    t.string "post_temp4"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id"], name: "index_posts_on_player_id"
    t.index ["topic_id"], name: "index_posts_on_topic_id"
  end

  create_table "privatemessages", force: :cascade do |t|
    t.integer "player_id"
    t.text "message_text"
    t.integer "message_for_id"
    t.boolean "message_read", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id"], name: "index_privatemessages_on_player_id"
  end

  create_table "scum_items", force: :cascade do |t|
    t.string "scum_item_image"
    t.string "scum_item_price"
    t.string "scum_item_name"
    t.string "scum_item_name_translit"
    t.string "scum_item_temp1"
    t.string "scum_item_temp2"
    t.string "scum_item_temp3"
    t.string "scum_item_temp4"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["scum_item_name"], name: "index_scum_items_on_scum_item_name"
    t.index ["scum_item_name_translit"], name: "index_scum_items_on_scum_item_name_translit"
  end

  create_table "squads", force: :cascade do |t|
    t.string "squad_name"
    t.string "squad_name_translit"
    t.string "squad_avatar"
    t.string "squad_rating"
    t.integer "squad_leader"
    t.text "squad_info"
    t.boolean "squad_recruting", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subforums", force: :cascade do |t|
    t.integer "forum_id"
    t.integer "subforum_show_order", default: 1
    t.string "subforum_name"
    t.string "subforum_icon"
    t.string "subforum_name_translit"
    t.string "subforum_temp1"
    t.string "subforum_temp2"
    t.string "subforum_temp3"
    t.string "subforum_temp4"
    t.index ["forum_id"], name: "index_subforums_on_forum_id"
    t.index ["subforum_name_translit"], name: "index_subforums_on_subforum_name_translit"
  end

  create_table "topics", force: :cascade do |t|
    t.integer "subforum_id"
    t.integer "player_id"
    t.string "topic_name"
    t.string "topic_name_caps"
    t.string "topic_name_translit"
    t.string "topic_icon"
    t.string "topic_home_image"
    t.string "topic_home_type"
    t.string "topic_home_icon"
    t.integer "topic_views", default: 0
    t.boolean "topic_show_homepage", default: false
    t.boolean "topic_pinned", default: false
    t.boolean "topic_closed", default: false
    t.string "topic_temp1"
    t.string "topic_temp2"
    t.string "topic_temp3"
    t.string "topic_temp4"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id"], name: "index_topics_on_player_id"
    t.index ["subforum_id"], name: "index_topics_on_subforum_id"
    t.index ["topic_name_translit"], name: "index_topics_on_topic_name_translit"
    t.index ["topic_show_homepage"], name: "index_topics_on_topic_show_homepage"
  end

end
