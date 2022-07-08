class Like < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: :author_id
  belongs_to :post, class_name: 'Post', foreign_key: :post_id

  def self.update_likes_counter
    Post.increment!(:LikesCounter)
  end
end
