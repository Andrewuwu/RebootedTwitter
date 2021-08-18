class CookieClicker < ApplicationRecord
  belongs_to :model
  validates :click_count, presence: true 
end
