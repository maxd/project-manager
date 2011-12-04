class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :first_name
      t.string :last_name
      t.decimal :focus_factor

      t.timestamps
    end
  end
end
