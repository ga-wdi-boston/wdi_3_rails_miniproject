class CommentsController < ApplicationController
  before_action :find_comment, only: [:show, :edit, :update, :destroy]


  def create
    @comment = Comment.create(comment_params)
    redirect_to @comment.post
  end

  def edit
  end

  def update
    @comment.update(comment_params)
    redirect_to @comment.post
  end

  def destory
    @comment.destroy
    redirect_to @comment.post
  end

  private
  def comment_params
    params.require(:comment).permit(:comment, :post_id)
  end

  def find_comment
    @comment = Comment.find(params[:id])
  end


end
