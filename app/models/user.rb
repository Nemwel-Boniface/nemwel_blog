class User < ApplicationRecord
  has_many :posts, foreign_key: :author_id
  has_many :comments, foreign_key: :author_id
  has_many :likes, foreign_key: :author_id

  def most_recent_posts(id)
    Post.order(created_at: :desc).where(author_id: id).limit(3)
  end
end
