class Tweet < ApplicationRecord
    belongs_to :model
    has_many :comments, dependent: :destroy

    validates :body, presence: true
    validates :mood, presence: true
end
