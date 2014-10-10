class CommentsController < ApplicationController
	# It creates a comment and afterwards redirect to back
	def create
		@comment = Comment.create(comment_params)
		redirect_to :back
	end
	# it deletes the comment and redirects to back
	def destroy
		Comment.find(params[:id]).destroy
		redirect_to :back
	end

	private
	# it gets the parameters for the comment
		def comment_params
			params.require(:comment).permit(:comment, :post_id)
		end

end