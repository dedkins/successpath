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

ActiveRecord::Schema.define(:version => 20131023171314) do

  create_table "affirmations", :force => true do |t|
    t.integer  "user_id"
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "member_id"
  end

  create_table "goals", :force => true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "description"
    t.date     "goaldate"
    t.string   "image"
    t.string   "url"
    t.integer  "priority"
    t.date     "achievedate"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.integer  "member_id"
    t.decimal  "progress",    :precision => 6, :scale => 0
  end

  create_table "members", :force => true do |t|
    t.string   "email",                   :default => "",    :null => false
    t.string   "encrypted_password",      :default => "",    :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",           :default => 0,     :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
    t.text     "actionquote"
    t.text     "financialstatementquote"
    t.decimal  "desiredassets"
    t.decimal  "actualassets"
    t.decimal  "desiredcf"
    t.decimal  "actualcf"
    t.text     "mainlifequote"
    t.string   "mainlifetitle"
    t.string   "actiontitle"
    t.boolean  "admin",                   :default => false
  end

  add_index "members", ["email"], :name => "index_members_on_email", :unique => true
  add_index "members", ["reset_password_token"], :name => "index_members_on_reset_password_token", :unique => true

  create_table "tasks", :force => true do |t|
    t.integer  "member_id"
    t.integer  "goal_id"
    t.string   "name"
    t.date     "duedate"
    t.string   "achievedate"
    t.string   "date"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
