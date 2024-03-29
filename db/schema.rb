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

ActiveRecord::Schema.define(:version => 20111204123045) do

  create_table "active_admin_comments", :force => true do |t|
    t.integer  "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "daily_meetings", :force => true do |t|
    t.datetime "date"
    t.integer  "iteration_resource_id"
    t.integer  "uncompleted_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "daily_meetings", ["iteration_resource_id"], :name => "index_daily_meetings_on_iteration_resource_id"

  create_table "iteration_resources", :force => true do |t|
    t.integer  "iteration_id"
    t.integer  "resource_id"
    t.integer  "work_days_count"
    t.decimal  "focus_factor",    :precision => 10, :scale => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "iteration_resources", ["iteration_id"], :name => "index_iteration_resources_on_iteration_id"
  add_index "iteration_resources", ["resource_id"], :name => "index_iteration_resources_on_resource_id"

  create_table "iteration_tasks", :force => true do |t|
    t.integer  "iteration_id"
    t.integer  "task_id"
    t.integer  "iteration_resource_id"
    t.integer  "research_effort"
    t.integer  "optimistic_effort"
    t.integer  "likely_effort"
    t.integer  "pessimistic_effort"
    t.integer  "real_effort"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "iteration_tasks", ["iteration_resource_id"], :name => "index_iteration_tasks_on_iteration_resource_id"
  add_index "iteration_tasks", ["task_id"], :name => "index_iteration_tasks_on_task_id"

  create_table "iterations", :force => true do |t|
    t.integer  "iteration_number"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "work_days_count"
    t.string   "target"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "resources", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.decimal  "focus_factor", :precision => 10, :scale => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tasks", :force => true do |t|
    t.string   "title"
    t.text     "note"
    t.text     "demo_note"
    t.integer  "priority"
    t.integer  "resource_id"
    t.integer  "status"
    t.integer  "research_effort"
    t.integer  "optimistic_effort"
    t.integer  "likely_effort"
    t.integer  "pessimistic_effort"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tasks", ["resource_id"], :name => "index_tasks_on_resource_id"

end
