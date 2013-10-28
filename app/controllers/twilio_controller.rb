class TwilioController < ApplicationController
  def process_sms
    name = params["FromCity"]
    Story.create(town: params["FromCity"].capitalize, zipcode: params["FromZip"], body: params["Body"])
    return '200'
  	#render 'process_sms.xml.erb', content_type: 'text/xml'
	end
end