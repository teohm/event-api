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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110920235135) do

  create_table "event_guests", :force => true do |t|
    t.integer  "event_id"
    t.integer  "user_id"
    t.string   "rsvp"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "event_guests", ["event_id"], :name => "index_event_guests_on_event_id"
  add_index "event_guests", ["user_id"], :name => "index_event_guests_on_user_id"

  create_table "events", :force => true do |t|
    t.integer  "creator_id"
    t.string   "title"
    t.string   "description"
    t.datetime "start"
    t.datetime "end"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "events", ["creator_id"], :name => "index_events_on_creator_id"

  create_table "users", :force => true do |t|
    t.string   "display_name"
    t.string   "email"
    t.string   "username"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
