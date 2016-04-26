class AddTaskImageToTodos < ActiveRecord::Migration
  def change
    add_column :todos, :task_image_id, :string
  end
end
