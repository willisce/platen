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

ActiveRecord::Schema.define(:version => 20121219205052) do

  create_table "data_types", :force => true do |t|
    t.string   "name"
    t.text     "control_code"
    t.integer  "user_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "data_types", ["user_id"], :name => "index_data_types_on_user_id"

  create_table "entries", :force => true do |t|
    t.text     "data"
    t.integer  "entry_type_id"
    t.integer  "section_id"
    t.integer  "user_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "entries", ["entry_type_id"], :name => "index_entries_on_entry_type_id"
  add_index "entries", ["section_id"], :name => "index_entries_on_section_id"
  add_index "entries", ["user_id"], :name => "index_entries_on_user_id"

  create_table "entry_type_definitions", :force => true do |t|
    t.integer  "entry_type_id"
    t.integer  "field_type_id"
    t.integer  "user_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "entry_type_definitions", ["entry_type_id"], :name => "index_entry_type_definitions_on_entry_type_id"
  add_index "entry_type_definitions", ["field_type_id"], :name => "index_entry_type_definitions_on_field_type_id"
  add_index "entry_type_definitions", ["user_id"], :name => "index_entry_type_definitions_on_user_id"

  create_table "entry_types", :force => true do |t|
    t.string   "name"
    t.text     "model"
    t.text     "form_code"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "entry_types", ["user_id"], :name => "index_entry_types_on_user_id"

  create_table "entry_views", :force => true do |t|
    t.string   "name"
    t.text     "view_code"
    t.integer  "entry_type_id"
    t.integer  "user_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "entry_views", ["entry_type_id"], :name => "index_entry_views_on_entry_type_id"
  add_index "entry_views", ["user_id"], :name => "index_entry_views_on_user_id"

  create_table "field_types", :force => true do |t|
    t.string   "name"
    t.string   "label"
    t.integer  "data_type_id"
    t.integer  "user_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "field_types", ["data_type_id"], :name => "index_field_types_on_data_type_id"
  add_index "field_types", ["user_id"], :name => "index_field_types_on_user_id"

  create_table "section_type_definitions", :force => true do |t|
    t.integer  "section_type_id"
    t.integer  "entry_type_id"
    t.integer  "user_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "section_type_definitions", ["entry_type_id"], :name => "index_section_type_definitions_on_entry_type_id"
  add_index "section_type_definitions", ["section_type_id"], :name => "index_section_type_definitions_on_section_type_id"
  add_index "section_type_definitions", ["user_id"], :name => "index_section_type_definitions_on_user_id"

  create_table "section_types", :force => true do |t|
    t.string   "name"
    t.integer  "site_type_id"
    t.integer  "user_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "section_types", ["site_type_id"], :name => "index_section_types_on_site_type_id"
  add_index "section_types", ["user_id"], :name => "index_section_types_on_user_id"

  create_table "section_view_definitions", :force => true do |t|
    t.integer  "section_view_id"
    t.integer  "entry_view_id"
    t.integer  "user_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "section_view_definitions", ["entry_view_id"], :name => "index_section_view_definitions_on_entry_view_id"
  add_index "section_view_definitions", ["section_view_id"], :name => "index_section_view_definitions_on_section_view_id"
  add_index "section_view_definitions", ["user_id"], :name => "index_section_view_definitions_on_user_id"

  create_table "section_views", :force => true do |t|
    t.string   "name"
    t.text     "view_code"
    t.integer  "section_type_id"
    t.integer  "user_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "section_views", ["section_type_id"], :name => "index_section_views_on_section_type_id"
  add_index "section_views", ["user_id"], :name => "index_section_views_on_user_id"

  create_table "sections", :force => true do |t|
    t.string   "title"
    t.integer  "site_id"
    t.integer  "section_type_id"
    t.integer  "parent_section_id"
    t.integer  "user_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "sections", ["parent_section_id"], :name => "index_sections_on_parent_section_id"
  add_index "sections", ["section_type_id"], :name => "index_sections_on_section_type_id"
  add_index "sections", ["site_id"], :name => "index_sections_on_site_id"
  add_index "sections", ["user_id"], :name => "index_sections_on_user_id"

  create_table "site_types", :force => true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "site_types", ["user_id"], :name => "index_site_types_on_user_id"

  create_table "sites", :force => true do |t|
    t.string   "title"
    t.integer  "site_type_id"
    t.integer  "user_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "sites", ["site_type_id"], :name => "index_sites_on_site_type_id"
  add_index "sites", ["user_id"], :name => "index_sites_on_user_id"

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
    t.string   "name"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
