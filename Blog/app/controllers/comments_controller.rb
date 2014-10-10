class CommentsController < ApplicationController

	def create
		@comment = Comment.create(comment_params)
		redirect_to :back
	end

	def destroy
		Comment.find(params[:id]).destroy
		redirect_to :back
	end

	private

		def comment_params
			params.require(:comment).permit(:comment, :post_id)
		end

end