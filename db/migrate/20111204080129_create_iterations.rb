class CreateIterations < ActiveRecord::Migration
  def change
    create_table :iterations do |t|
      t.integer :iteration_number
      t.date :start_date
      t.date :end_date
      t.integer :work_days_count
      t.string :target

      t.timestamps
    end
  end
end
