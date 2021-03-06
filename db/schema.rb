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

ActiveRecord::Schema.define(:version => 20120811171934) do

  create_table "creates", :force => true do |t|
    t.integer  "patron_id"
    t.integer  "manifestation_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "items", :force => true do |t|
    t.integer  "manifestation_id"
    t.integer  "shelf_id"
    t.string   "item_identifier"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "libraries", :force => true do |t|
    t.string   "name"
    t.text     "address"
    t.string   "telephone_number"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "manifestations", :force => true do |t|
    t.text     "original_title"
    t.string   "isbn"
    t.datetime "date_of_publication"
    t.text     "url"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "patrons", :force => true do |t|
    t.text     "full_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "produces", :force => true do |t|
    t.integer  "patron_id"
    t.integer  "manifestation_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "realizes", :force => true do |t|
    t.integer  "patron_id"
    t.integer  "manifestation_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "shelves", :force => true do |t|
    t.integer  "library_id"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "user_number"
    t.string   "email"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
