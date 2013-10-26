class TwilioController < ApplicationController

  def process_sms
    @town = params[:FromCity].capitalize
    @region = params[:FromState]
    @country = params[:FromCountry]
    @zipcode = params[:FromZip]
    @body = params[:Body]
    @sender = params[:From]

    render 'process_sms.xml.erb', :content_type => 'text/xml'
  end

end