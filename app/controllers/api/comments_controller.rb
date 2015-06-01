class Api::CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      render json: @comment
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  def index
    @todo_list_item = TodoListItem.find(params[:todo_list_item_id])
    @comments = @todo_list_item.comments
    render json: @comments
  end

  def show
    @comment = Comment.find(params[:id])
    render json: @comment
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :todo_list_item_id)
  end
end
