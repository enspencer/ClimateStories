class Story < ActiveRecord::Base
	include Geocoder
	
	belongs_to :user
	has_many :comments
	after_initialize :ip_to_address
	acts_as_gmappable

	def gmaps4rails_address
  		"#{latitude}, #{longitude}"
	end

	def ip_to_address
		request ||= nil #initializes request to nil if there isn't one
		if request
			if request.location
				result = request.location || "204.9.220.40"
			else
				result = self.zipcode
			end
		else
			result = self.zipcode
		end
		address = Geocoder.search("result")
		self.latitude = address.first.data["latitude"]
		self.longitude = address.first.data["longitude"]
		self.town = address.first.data["city"]
		self.region = address.first.data["region_code"]
		self.country = address.first.data["country_code"]
	end
end