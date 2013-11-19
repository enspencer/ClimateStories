require 'spec_helper'

describe Story do

  before(:each) do
    @user = User.create(email: 'emma@smelly.com')
    @comment = Story.create
  end

  it {should belong_to(:user)}
  it {should have_many(:comments)}

end