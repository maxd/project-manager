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

ActiveRecord::Schema.define(:version => 20111204080753) do

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
