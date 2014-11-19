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

ActiveRecord::Schema.define(version: 20141119103340) do

  create_table "pipelines", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "priorities", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sections", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "story_containers", force: true do |t|
    t.string   "head_line"
    t.string   "lead_line"
    t.string   "short_line"
    t.string   "mast_photo_url"
    t.string   "mast_thumb_url"
    t.integer  "section_id"
    t.integer  "priority_id"
    t.integer  "pipeline_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "story_containers", ["pipeline_id"], name: "index_story_containers_on_pipeline_id"
  add_index "story_containers", ["priority_id"], name: "index_story_containers_on_priority_id"
  add_index "story_containers", ["section_id"], name: "index_story_containers_on_section_id"

end
