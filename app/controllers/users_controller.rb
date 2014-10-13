class UsersController < ApplicationController

	before_action :set_user, only: [:show, :edit, :updare, :destroy]

	def index
		@users = User.all
	end

	def login
		redirect_to posts_path
	end

	def show
	end

	def new
		@user = User.new
	end

	def create
		@user = User.create(user_params)
		if @user.save
			redirect_to posts_path
		else
			render :new
		end
	end


	private

		def set_user
			@user = User.find(params[:id])
		end

		def user_params
			params.require(:user).permit(:first_name, :last_name, :password, :email)
		end
end