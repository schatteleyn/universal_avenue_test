class Post < ActiveRecord::Base

  belongs_to :blog
  has_many :comments

  validates :title, :content, presence: true
  alias_attribute :post_id, :id
end
