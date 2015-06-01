window.TodoListApp.Collections.TodoListItemComments = Backbone.Collection.extend({
  model: TodoListApp.Models.Comments,

  url: function () {
    return '/api/todo_list_items/' + this.todoListItem.get('id') + '/comments';
  },

  initialize: function (models, options) {
    this.todoListItem = options.todoListItem;
  }
});


var todoList = new TodoListApp.Models.TodoList({id: 1});
todoList.fetch();
var todoListItems = new TodoListApp.Collections.TodoListItems([], {todoList: todoList});
todoListItems.fetch();
var listItem = todoListItems.models[0];
var itemComments = TodoListApp.Collections.TodoListItemComments([],{todoListItem: listItem });
