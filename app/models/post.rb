class Post < ActiveRecord::Base
  belongs_to :blog

  validates :title, :content, presence: true
end
