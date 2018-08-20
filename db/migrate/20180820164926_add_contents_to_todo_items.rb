class AddContentsToTodoItems < ActiveRecord::Migration[5.2]
  def change
    add_column :todo_items, :contents, :string
  end
end
