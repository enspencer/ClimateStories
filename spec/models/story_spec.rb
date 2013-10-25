require 'spec_helper'

describe Story do |variable|
	subject do
		Story.create(name: "", body: "")
	end

	it "should have many comments" do
		comment = Comment.create(name: "", body: "", story_id: subject.id)
		# subject.comments << comment
	end

end