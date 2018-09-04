class CreateTodoItems < ActiveRecord::Migration[5.2]
  def change
    create_table :todo_items do |t|
      t.references :user
      t.string :title
      t.string :contents
      t.datetime :due_date
      t.boolean :done_flag, default: false, null: false
      t.timestamps
    end
  end
end
