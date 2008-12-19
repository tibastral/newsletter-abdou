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

ActiveRecord::Schema.define(:version => 20081215182224) do

  create_table "actus", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "newsletter_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "newsletters", :force => true do |t|
    t.string   "name"
    t.string   "artist_name"
    t.text     "artist_caption"
    t.string   "party_name"
    t.string   "party_cost"
    t.text     "party_adress"
    t.text     "party_description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "artist_photo_file_name"
    t.string   "artist_photo_content_type"
    t.integer  "artist_photo_file_size"
    t.integer  "party_id"
  end

  create_table "parties", :force => true do |t|
    t.string   "name"
    t.date     "day"
    t.integer  "newsletter_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
