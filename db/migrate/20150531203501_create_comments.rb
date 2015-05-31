class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :content, null: false
      t.integer :todo_list_item_id, null: false

      t.timestamps null: false
    end

    add_index :comments, :todo_list_item_id
  end
end
