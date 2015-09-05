class Comment < ActiveRecord::Base
  validates :author, presence: true
  validates :comment, presence: true
end
