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

ActiveRecord::Schema.define(:version => 20090310200551) do

  create_table "media_items", :force => true do |t|
    t.string   "news_item_id"
    t.string   "type"
    t.string   "subtype"
    t.string   "caption"
    t.string   "copyright"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "media_metadata_items", :force => true do |t|
    t.integer  "media_item_id"
    t.string   "format"
    t.string   "height"
    t.string   "width"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "news_items", :force => true do |t|
    t.string   "section"
    t.string   "subsection"
    t.string   "headline"
    t.string   "summary"
    t.string   "url"
    t.string   "byline"
    t.string   "platform"
    t.string   "source"
    t.datetime "updated"
    t.datetime "created"
    t.date     "pubdate"
    t.string   "subtype"
    t.string   "kicker"
    t.string   "subheadline"
    t.string   "terms"
    t.string   "organizations"
    t.string   "people"
    t.string   "locations"
    t.string   "indexing_terms"
    t.string   "categories_tags"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "related_urls", :force => true do |t|
    t.string   "news_item_id"
    t.string   "suggested_link_text"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
