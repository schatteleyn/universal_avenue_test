class Comment < ActiveRecord::Base

  belongs_to :post
  has_one :blog, through: :post

  validates :username, :content, presence: true
end
