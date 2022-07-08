require 'rails_helper'

RSpec.describe Comment, type: :model do
  before(:each) do
    @user = User.create(name: 'Nemwel', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Taekwondo master.',
                        post_counter: 0)
    @post = Post.create(author: @user, title: 'Hello', text: 'This is my first post', likes_counter: 0,
                        comments_counter: 0)
    @comment = Comment.new(text: 'comment1', author_id: 1, post_id: 2)
  end

  it 'The Text must not be blank' do
    @comment.text = nil
    expect(@comment).to_not be_valid
  end

  it 'The comments author_id must be an integer' do
    @comment.author_id = 'char'
    expect(@comment).to_not be_valid
  end
end
