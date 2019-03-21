class User < ApplicationRecord
  include DeviseTokenAuth::Concerns::User
  include Filterable

  devise :database_authenticatable, :registerable
  validates :email, :name, presence: true
  has_many :posts, dependent: :destroy
  has_many :reblogs, dependent: :destroy
  has_many :likes, dependent: :destroy
  after_save :send_greeting_email

  scope :by_name, -> (name) { where('lower(name) = ?', name.downcase)}
  scope :by_email, -> (email) { where('lower(email) = ?', email.downcase)}

  private

  def send_greeting_email
    UsersMailer.registration_greeting(id).deliver_later
  end
end
