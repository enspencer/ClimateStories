class Comment < ActiveRecord::Base
	belongs_to :story

	validates_presence_of :name
	validates_length_of :name, :within => 2..30
	validates_presence_of :body
end
