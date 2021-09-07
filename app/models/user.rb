class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  devise :omniauthable, :omniauth_providers => [:facebook]
  
  has_many :posts
  has_many :comments

  has_many :friend_requests
  has_many :friendships, dependent: :destroy
  has_many :friends, through: :friendships
end
