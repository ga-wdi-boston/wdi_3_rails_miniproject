class UsersController < ApplicationController

	def register
		@user = User.new
	end

	def create
		@user = User.create(user_params)
		redirect_to posts_path
	end


	private

		def user_params
			params.require(:user).permit(:first_name, :last_name, :password, :email)
		end
end