class CreateDailyMeetings < ActiveRecord::Migration
  def change
    create_table :daily_meetings do |t|
      t.datetime :date
      t.references :iteration_resource
      t.integer :uncompleted_time

      t.timestamps
    end
    add_index :daily_meetings, :iteration_resource_id
  end
end
