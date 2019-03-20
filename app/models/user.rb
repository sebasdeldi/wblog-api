class User < ApplicationRecord
  devise :database_authenticatable, :registerable
  include DeviseTokenAuth::Concerns::User
  validates :email, :name, presence: true
  has_many :posts, dependent: :destroy
  has_many :reblogs, dependent: :destroy
  has_many :likes, dependent: :destroy
end
