require 'rails_helper'

RSpec.describe Like, type: :model do
  before(:each) do
    @user = User.create(name: 'Nemwel', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Taekwondo master.',
                        post_counter: 0)
    @post = Post.create(author: @user, title: 'Hello', text: 'This is my first post', likes_counter: 0,
                        comments_counter: 0)
    @like = Like.new(author_id: 1, post_id: 2)
  end

  it 'The author_id must not be blank' do
      @like.author_id = false
      expect(@like).to_not be_valid
    end

    it 'The post_id must not be blank' do
      @like.post_id = nil
      expect(@like).to_not be_valid
    end
end
