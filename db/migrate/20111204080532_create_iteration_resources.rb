class CreateIterationResources < ActiveRecord::Migration
  def change
    create_table :iteration_resources do |t|
      t.references :iteration
      t.references :resource
      t.integer :work_days_count
      t.decimal :focus_factor

      t.timestamps
    end
    add_index :iteration_resources, :iteration_id
    add_index :iteration_resources, :resource_id
  end
end
