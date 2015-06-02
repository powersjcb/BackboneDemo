json.partial!(@todo_list)

json.todo_list_items do
  json.array!(
    @todo_list_items,
    partial: 'api/todo_list_items/todo_list_item',
    as: :todo_list_item
  )
end
