class Post < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: :author_id
  has_many :comments
  has_many :likes

  def most_recent_posts(id)
    Comment.order(created_at: :desc).where(author_id: id).limit(5)
  end
end
