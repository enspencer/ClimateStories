ClimateStories::Application.config.account_sid = ENV['ACCOUNT_SID']
ClimateStories::Application.config.auth_token = ENV['AUTH_TOKEN']
ClimateStories::Application.config.phone_number = ENV['PHONE_NUMBER']

# TWILIO_CLIENT = Twilio::REST::Client.new ENV['ACCOUNT_SID'], ENV['AUTH_TOKEN']