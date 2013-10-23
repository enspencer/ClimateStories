class StoriesController < ApplicationController

	def index
		@stories = Story.all
		@json = @stories.to_gmaps4rails
	end

end