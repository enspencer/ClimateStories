class TwilioController < ApplicationController
  def process_sms
    town = params["FromCity"].capitalize
    zipcode = params["FromZip"]
   	body = params["Body"]
    name = params["From"]
    Story.create(zipcode: params["FromZip"], body: params["Body"], name: params["Name"])
    return '200'
  	#render 'process_sms.xml.erb', content_type: 'text/xml'
	end
end