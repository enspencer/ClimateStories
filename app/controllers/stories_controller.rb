class StoriesController < ApplicationController
	before_action :set_story, only: [:show, :edit, :update, :destroy]

	def index
		@stories = Story.all
		@json = @stories.to_gmaps4rails
	end

	def show
	end

	def new
		@story = Story.new
	end

	def edit
	end

	def create
		@story= Story.new(story_params)
		respond_to do |format|
			if @story.save
				format.html { redirect_to @story, notice: 'Story was successfully created.' }
				format.json { render action: 'show', status: :created, location: @story }
			else
				format.html { render action: 'new' }
				format.json { render json: @story.errors, status: :unprocessable_entity }
			end
		end
	end

	def update
	    respond_to do |format|
	      if @story.update(story_params)
	        format.html { redirect_to @story, notice: 'Story was successfully updated.' }
	        format.json { head :no_content }
	      else
	        format.html { render action: 'edit' }
	        format.json { render json: @story.errors, status: :unprocessable_entity }
	      end
	    end
	end

	def destroy
		@story.destroy
		    respond_to do |format|
		      format.html { redirect_to stories_url }
		      format.json { head :no_content }
		    end
	end

	private

	def set_story
		@story = Story.find(params[:id])
	end

	def story_params
		params.require(:story).permit(:name, :body, :url, :town, :region, :country, :latitude, :longitude)
	end

end