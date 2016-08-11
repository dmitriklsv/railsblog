class User < ApplicationRecord
  has_many :comments
  has_many :posts
  has_many :likes

  def recent_3_posts
    posts.limit(3).order(created_at: :desc)
  end

  validates :name, presence: true
end
