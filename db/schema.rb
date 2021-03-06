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

ActiveRecord::Schema.define(:version => 20130227221703) do

  create_table "guide_spots", :force => true do |t|
    t.integer  "guide_id"
    t.integer  "spot_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "guide_spots", ["guide_id", "spot_id"], :name => "index_guide_spots_on_guide_id_and_spot_id"

  create_table "guides", :force => true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.integer  "location_id"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
    t.text     "description"
    t.integer  "tasks_count", :default => 0
    t.integer  "votes_count", :default => 0
  end

  create_table "guidespots", :force => true do |t|
    t.integer  "guide_id"
    t.integer  "spot_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "locations", :force => true do |t|
    t.string   "name",       :null => false
    t.string   "city"
    t.string   "country"
    t.string   "region"
    t.string   "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "spots", :force => true do |t|
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
    t.string   "address"
    t.string   "city"
    t.string   "postcode"
    t.string   "name"
    t.string   "phone"
    t.string   "photo"
    t.text     "description"
    t.integer  "user_id"
    t.integer  "votes_count", :default => 0
  end

  create_table "system_metrics", :force => true do |t|
    t.string   "name",               :null => false
    t.datetime "started_at",         :null => false
    t.string   "transaction_id"
    t.text     "payload"
    t.float    "duration",           :null => false
    t.float    "exclusive_duration", :null => false
    t.integer  "request_id"
    t.integer  "parent_id"
    t.string   "action",             :null => false
    t.string   "category",           :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username",         :null => false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "votes", :force => true do |t|
    t.integer  "user_id",       :null => false
    t.integer  "voteable_id",   :null => false
    t.string   "voteable_type", :null => false
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end
