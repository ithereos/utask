class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.integer :user_id
      t.string :name
      t.boolean :completed
      t.integer :task_count

      t.timestamps
    end
  end
end
