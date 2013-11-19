require 'spec_helper'

describe Comment do

  before(:each) do
    @user = User.create(email: 'emma@smelly.com', username: 'Rabbit')
    @comment = Comment.create(name: 'Best Post Ever', body: 'This is the best post ever')
    @story = Story.create(name: 'The Story of Rabbit', body: 'Eating Carrots All Day')
  end

  it {should belong_to(:story)}
  it {should validate_presence_of(:name)}
  it {should validate_presence_of(:body)}

end