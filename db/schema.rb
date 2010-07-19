# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100719005341) do

  create_table "categories", :force => true do |t|
    t.integer  "Category_ID"
    t.decimal  "fee"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "displays_ats", :force => true do |t|
    t.string   "artist"
    t.string   "artist_Telephone"
    t.integer  "festival_ID"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "festival_sponsors", :force => true do |t|
    t.string   "organization"
    t.integer  "festival_ID"
    t.decimal  "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "festivals", :force => true do |t|
    t.date     "start"
    t.date     "end"
    t.string   "name"
    t.string   "location"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fine_artists", :force => true do |t|
    t.string   "category"
    t.string   "home_Gallery"
    t.string   "name"
    t.string   "telephone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "musicians", :force => true do |t|
    t.string   "genre"
    t.decimal  "performance_Fee"
    t.string   "name"
    t.string   "telephone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "performs_ats", :force => true do |t|
    t.string   "musician_Name"
    t.integer  "mestival_ID"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "plays_ons", :force => true do |t|
    t.string   "musician_Name"
    t.time     "time"
    t.integer  "festival_ID"
    t.integer  "stage_ID"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sells_ats", :force => true do |t|
    t.integer  "license"
    t.integer  "festival_ID"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sponsors", :force => true do |t|
    t.string   "organization"
    t.string   "contact"
    t.string   "telephone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stages", :force => true do |t|
    t.integer  "festival_ID"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vendors", :force => true do |t|
    t.string   "name"
    t.string   "telephone"
    t.string   "license"
    t.string   "credit_Type"
    t.string   "credit_Number"
    t.integer  "category_ID"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
