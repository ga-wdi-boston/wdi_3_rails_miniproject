class PostsController < ActionController::Base

  before_action :find_post, only: [:show]

  def index
    @posts = Post.order(:created_at)
  end

  def show
    @comments = @post.comments
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(comment_params)
    @post.save
    redirect_to @post
  end



  private

  def find_post
    @post = Post.find(params[:id])
  end

  def comment_params
    params.require(:post).permit(:title, :post)
  end

end
