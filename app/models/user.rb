class User < ApplicationRecord
  devise :database_authenticatable, :registerable
  include DeviseTokenAuth::Concerns::User
  validates :email, :name, presence: true
  has_many :posts, dependent: :destroy
  has_many :reblogs, dependent: :destroy
  has_many :likes, dependent: :destroy
  after_save :send_greeting_email

  private

  def send_greeting_email
    UsersMailer.registration_greeting(id).deliver_later
  end
end
