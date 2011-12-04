class CreateIterationTasks < ActiveRecord::Migration
  def change
    create_table :iteration_tasks do |t|
      t.references :iteration
      t.references :task
      t.references :iteration_resource
      t.integer :research_effort
      t.integer :optimistic_effort
      t.integer :likely_effort
      t.integer :pessimistic_effort
      t.integer :real_effort

      t.timestamps
    end
    add_index :iteration_tasks, :task_id
    add_index :iteration_tasks, :iteration_resource_id
  end
end
