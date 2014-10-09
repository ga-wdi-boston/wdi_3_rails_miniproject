class PostsController < ActionController::Base

  before_action :find_post, only: [:show]

  def index
    @posts = Post.order(:created_at)
  end

  def show
  end

  private

  def find_post
    @post = Post.find(params[:id])
  end

end
