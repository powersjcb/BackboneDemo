class CreateTodoListItems < ActiveRecord::Migration
  def change
    create_table :todo_list_items do |t|
      t.string :content, null: false
      t.integer :todo_list_id, null: false

      t.timestamps null: false
    end

    add_index :todo_list_items, :todo_list_id
  end
end
