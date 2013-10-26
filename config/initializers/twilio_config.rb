ClimateStories::Application.config.account_sid = ENV['USER_SID']
ClimateStories::Application.config.auth_token = ENV['AUTH_TOKEN'
ClimateStories::Application.config.phone_number = ENV['PHONE_NUMBER']

client = Twilio::REST::Client.new account_sid, auth_token