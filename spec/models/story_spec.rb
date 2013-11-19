require 'spec_helper'

describe Story do

  before(:each) do
    @user = User.create(email: 'emma@smelly.com')
    @story = Story.create(name: 'The Story of Rabbit', body: 'Eating Carrots All Day')
    @comment = Comment.create(name: 'Best Post Ever', body: 'This is the best post ever')
  end

  it {should belong_to(:user)}
  it {should have_many(:comments)}

end