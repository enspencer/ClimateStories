require 'spec_helper'

describe Comment do

  before(:each) do
    @user = User.create(email: 'emma@smelly.com', name: 'Emma', )
    @comment = Comment.create(name: 'Best Post Ever', body: 'This is the best post ever')
  end

  it {should belong_to(:story)}
  it {should validates_presence_of(:name)}
  it {should validates_presence_of(:body)}
  it {should validates_length_of(:name)}

end