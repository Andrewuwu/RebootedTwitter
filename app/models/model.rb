class Model < ApplicationRecord
  has_many :tweets
  has_many :comments
  has_many :following, foreign_key: "follower_id", class_name: "Relationship"
  has_many :followers, foreign_key: "followed_id", class_name: "Relationship"
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  validates_uniqueness_of :username
end
