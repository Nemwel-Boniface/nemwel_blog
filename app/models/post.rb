class Post < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: :author_id
  has_many :comments
  has_many :likes

  # Validations
  validates :title, presence: true, length: { maximum: 250 }
  validates :comments_counter, numericality: { greater_than_or_equal_to: 0 }
  validates :likes_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  def update_posts_count
    author.increment!(:post_counter)
  end

  def most_recent_comments
    Comment.order(created_at: :desc).includes(:post).limit(5)
  end
end
