window.TodoListApp.Collections.TodoListItems = Backbone.Collection.extend({
  model: TodoListApp.Models.TodoListItem,

  url: function () {
    return "/api/todo_lists/" + this.todoList.get('id') + '/todo_list_items';
  },

  initialize: function (models, options) {
    this.todoList = options.todoList;
  }
});
