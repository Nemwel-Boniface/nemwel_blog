require 'rails_helper'

RSpec.describe Post, type: :model do
  it "Post should not be valid without valid attributes" do
    expect(Post.new).to_not be_valid
  end 

  it "Post title should not be empty" do 
    post = Post.new(title: nil)
    expect(post).to_not be_valid
  end

  it "Post comment counter should not be a nil" do
    post = Post.new(comments_counter: nil)
    expect(post).to_not be_valid
  end

  it "Post comment counter should not be a string" do
    post = Post.new(comments_counter: 'one')
    expect(post).to_not be_valid
  end

  it "Likes comment counter should not be a nil" do
    post = Post.new(likes_counter: nil)
    expect(post).to_not be_valid
  end

  it "Likes comment counter should not be a string" do
    post = Post.new(likes_counter: 'one')
    expect(post).to_not be_valid
  end

  it "Most recent comments returns most recent 5 comments" do
    comment = Post.most_recent_comments.length
    expect(comment).to be <= 5
  end
end
