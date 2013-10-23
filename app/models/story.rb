class Story < ActiveRecord::Base
	belongs_to :user
	acts_as_gmappable

	def gmaps4rails_address
  		"#{town}, #{region}, #{country}"
	end
end