class Api::TodoListItemsController < ApplicationController
  def create
    @todo_list_item = TodoListItem.new(todo_list_item_params)

    if @todo_list_item.save
      render json: @todo_list_item
    else
      render json: @todo_list_item.errors, status: :unprocessable_entity
    end
  end

  def index
    @todo_list_items = TodoListItem.where(todo_list_id: params[:todo_list_id])
    render json: @todo_list_items
  end


  def show
    @todo_list_item = TodoListItem.find(params[:id])
    render json: @todo_list_item
  end

  private
  def todo_list_item_params
    params.require(:todo_list_item).permit(:content, :todo_list_id)
  end
end
