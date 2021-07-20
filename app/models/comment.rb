class Comment < ApplicationRecord
  belongs_to :tweet
  belongs_to :model
  validates :comment, presence: true
end
