class Api::TodoListsController < ApplicationController
  def create
    @todo_list = TodoList.new(todo_list_params)

    if @todo_list.save
      render json: @todo_list
    else
      render json: @todo_list.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @todo_list = TodoList.find(params[:id])
    if @todo_list.destroy
      render json: @todo_list
    else
      render json: @todo_list.errors
    end
  end

  def index
    @todo_lists = TodoList.all
    render "index"
  end

  def show
    @todo_list = TodoList.find(params[:id])
    @todo_list_items = @todo_list.todo_list_items
    render 'show'
  end

  def update
    @todo_list = TodoList.find(params[:id])

    if @todo_list.update(todo_list_params)
      render json: @todo_list
    else
      render json: @todo_list.errors, status: :unprocessable_entity
    end
  end

  private

  def todo_list_params
    params.require(:todo_list).permit(:name)
  end
end
