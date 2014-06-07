class AddCommentsToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :comments, :string
    add_column :tasks, :duedate, :datetime
    add_column :lists, :category, :string
  end
end
