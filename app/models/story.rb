class Story < ActiveRecord::Base
	belongs_to :user
	acts_as_gmappable

	def gmaps4rails_address
  		"#{town}, #{region}, #{country}"
	end

	# def gmaps4rails_marker_picture
	# 	{
	# 	   "picture" => "./images/cloudy.png",
	# 	   "width" => 20,
	# 	   "height" => 20,
	# 	   "marker_anchor" => [ 5, 10],
	# 	   "shadow_picture" => "/images/morgan.png" ,
	# 	   "shadow_width" => "110",
	# 	   "shadow_height" => "110",
	# 	   "shadow_anchor" => [5, 10],
	# 	 }
	# end

	# def user_owns_story?
	# 	story.user == current_user
	# end

end