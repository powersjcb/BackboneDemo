window.TodoListApp.Collections.TodoLists = Backbone.Collection.extend({
  url: "/api/todo_lists",
  model: TodoListApp.Models.TodoList
});
