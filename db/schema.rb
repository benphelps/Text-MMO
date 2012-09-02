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

ActiveRecord::Schema.define(:version => 20120901154431) do

  create_table "armor_items", :force => true do |t|
    t.string   "armor_tier_id"
    t.string   "enchant_id"
    t.string   "bonus_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "name"
    t.integer  "stat_set_id"
  end

  create_table "armor_materials", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "armor_tiers", :force => true do |t|
    t.string   "name"
    t.integer  "level"
    t.integer  "deviation"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.integer  "armor_material_id"
    t.integer  "stat_set_id"
  end

  create_table "armors", :force => true do |t|
    t.integer  "character_id", :limit => 255
    t.integer  "head_id",      :limit => 255
    t.integer  "shoulder_id",  :limit => 255
    t.integer  "chest_id",     :limit => 255
    t.integer  "back_id",      :limit => 255
    t.integer  "waist_id",     :limit => 255
    t.integer  "legs_id",      :limit => 255
    t.integer  "feet_id",      :limit => 255
    t.integer  "hands_id",     :limit => 255
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.integer  "finger_id"
  end

  create_table "bonus", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "stat_set_id"
  end

  create_table "bonuses", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "characters", :force => true do |t|
    t.string   "level"
    t.string   "health"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.integer  "user_id"
    t.string   "name"
    t.integer  "order_id"
    t.boolean  "active",     :default => false
  end

  create_table "classes", :force => true do |t|
    t.string   "class"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "enchants", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "stat_set_id"
  end

  create_table "orders", :force => true do |t|
    t.string   "name"
    t.float    "agility"
    t.float    "intellect"
    t.float    "stamina"
    t.float    "strength"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "rails_admin_histories", :force => true do |t|
    t.text     "message"
    t.string   "username"
    t.integer  "item"
    t.string   "table"
    t.integer  "month",      :limit => 2
    t.integer  "year",       :limit => 5
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], :name => "index_rails_admin_histories"

  create_table "stat_sets", :force => true do |t|
    t.integer  "agility",    :limit => 255
    t.integer  "intellect",  :limit => 255
    t.integer  "strength",   :limit => 255
    t.integer  "stamina",    :limit => 255
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "username"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
