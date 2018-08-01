class CreateTodoItems < ActiveRecord::Migration[5.2]
  def change
    create_table :todo_items do |t|
      t.integer :user_id
      t.string :title
      t.datetime :due_date
      t.boolean :done_flag
    end
  end
end
