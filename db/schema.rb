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

ActiveRecord::Schema.define(:version => 20090303175157) do

  create_table "business_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "category_id", :limit => 11
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "features", :force => true do |t|
    t.string   "business_name"
    t.string   "telephone"
    t.text     "description"
    t.string   "category"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "business_type_id",       :limit => 11
    t.decimal  "average_review_stars",                 :precision => 3, :scale => 2
    t.string   "logophoto_file_name"
    t.string   "logophoto_content_type"
    t.integer  "logophoto_file_size",    :limit => 11
    t.datetime "logophoto_updated_at"
    t.string   "first_line_address"
    t.string   "second_line_address"
    t.string   "address_town"
    t.string   "address_county"
    t.string   "address_postcode"
    t.string   "email"
    t.string   "web_address"
    t.string   "summary"
  end

  create_table "reviews", :force => true do |t|
    t.integer  "user_id",    :limit => 11
    t.integer  "feature_id", :limit => 11
    t.datetime "created_at"
    t.text     "comments"
    t.integer  "stars",      :limit => 11
    t.datetime "updated_at"
    t.string   "best_quote"
  end

  create_table "users", :force => true do |t|
    t.string   "login"
    t.string   "email"
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token"
    t.datetime "remember_token_expires_at"
    t.boolean  "admin_access"
  end

end
