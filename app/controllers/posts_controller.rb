class PostsController < ApplicationController

  before_action :find_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.order(:updated_at)
  end

  def show
    @comments = @post.comments
    @post_c = find_post
    @comment = @post_c.comments.new
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    @post.save
    redirect_to @post
  end

  def edit
  end

  def update
    @post.update(post_params)
    redirect_to @post
  end

  def destroy
    @post.destroy
    redirect_to action: :index
  end

  private

  def find_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :post)
  end

end
