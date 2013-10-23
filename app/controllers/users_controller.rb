class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def show
		if current_user
			# @my_stories = current_user.stories
		end
	end
end