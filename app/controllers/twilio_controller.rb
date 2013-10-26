class TwilioController < ApplicationController
	before_action :set_twilio
	
	  def process_sms
	    @town = params[:FromCity].capitalize
	    @region = params[:FromState]
	    @country = params[:FromCountry]
	    @zipcode = params[:FromZip]
	   	@body = params[:Body]
	    @name = params[:From]

    render 'process_sms.xml.erb', :content_type => 'text/xml'
  end

  private

	  def set_twilio
	  	twilio = Twilio.find(params[:id])
	  end

	  def twilio_params
	  	params.require(:twilio).permit(:FromCity, :FromState, :FromCountry, :FromZip, :Body, :From)
	  end

end