class PostsController < ApplicationController
	# it runs the set_post method before the page loads , only for the specified methods
	before_action :set_post, only: [:show, :edit, :update, :destroy]
	# index method to declare the all posts.
	def index
		@posts = Post.all
	end
	# shows the posts and comments associated with it.
	def show
		@comment = Comment.new(post_id: @post.id)
		@comments = @post.comments
	end

	def new
		@post = Post.new
	end
	# creates a post
	def create
		@post = Post.create(post_params)
		if @post.save
			redirect_to posts_path 
		else
			render :new 
		end
	end

	def edit
	end
	# updates a post
	def update
		@post.update(post_params)
		if @post.update(post_params)
			redirect_to post_path(@post)
		else
			render :edit
		end
	end
	# deletes a post
	def destroy
		@post.destroy
		redirect_to :back
	end

	private
		# finds a pst object with the right paramteres
		def set_post
			@post = Post.find(params[:id])
		end

		def post_params
			params.require(:post).permit(:title, :author, :content)
		end
end