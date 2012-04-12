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

ActiveRecord::Schema.define(:version => 0) do

  create_table "browsers", :force => true do |t|
    t.text "name"
  end

  add_index "browsers", ["id"], :name => "autoindex_browsers_1", :unique => true
  add_index "browsers", ["name"], :name => "autoindex_browsers_2"

  create_table "instructions", :force => true do |t|
    t.text    "content"
    t.integer "platform_id"
    t.integer "browser_id"
  end

  add_index "instructions", ["id"], :name => "autoindex_instructions_1", :unique => true

  create_table "platforms", :force => true do |t|
    t.text "name", :null => false
  end

  add_index "platforms", ["id"], :name => "autoindex_platforms_1", :unique => true

end
