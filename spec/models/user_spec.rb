require 'spec_helper'

describe User do

  before(:each) do
    @user = User.create(email: 'emma@smelly.com', name: 'Emma', username: 'Rabbit')
  end

  it {should have_many(:story)}
  it {should validate_presence_of(:name)}
  it {should validate_presence_of(:body)}
  it {should validate_length_of(:name)}

end
