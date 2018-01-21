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

ActiveRecord::Schema.define(version: 20180121175910) do

  create_table "prizes", force: :cascade do |t|
    t.integer "counter", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "zendesk_logo_file_name"
    t.string "zendesk_logo_content_type"
    t.integer "zendesk_logo_file_size"
    t.datetime "zendesk_logo_updated_at"
    t.string "tier_1_prize_file_name"
    t.string "tier_1_prize_content_type"
    t.integer "tier_1_prize_file_size"
    t.datetime "tier_1_prize_updated_at"
    t.string "tier_2_prize_file_name"
    t.string "tier_2_prize_content_type"
    t.integer "tier_2_prize_file_size"
    t.datetime "tier_2_prize_updated_at"
    t.string "tier_3_prize_file_name"
    t.string "tier_3_prize_content_type"
    t.integer "tier_3_prize_file_size"
    t.datetime "tier_3_prize_updated_at"
  end

  create_table "wallpapers", force: :cascade do |t|
    t.string "platform"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
  end

end
