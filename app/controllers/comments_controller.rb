class CommentsController < ApplicationController
	def create
		@story = Story.find(params[:story_id])
		@comment = @story.comments.create(comment_params)

		if @comment.save
			flash[:notice] = 'Comment was successfully created.'
			redirect_to(@story)
		else
			flash[:notice] = "Error creating comment: #{@comment.errors}"
			redirect_to(@story)
		end
	end

	def destroy
		@comment = Comment.find(params[:comment_id])
		binding.pry
		@story = @comment.story
		@comment.destroy

		redirect_to(@story)
	end

	private

	def comment_params
		params.require(:comment).permit(:name, :body, :story_id)
	end

end