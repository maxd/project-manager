class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :note
      t.text :demo_note
      t.integer :priority
      t.references :resource
      t.integer :status
      t.integer :research_effort
      t.integer :optimistic_effort
      t.integer :likely_effort
      t.integer :pessimistic_effort

      t.timestamps
    end
    add_index :tasks, :resource_id
  end
end
