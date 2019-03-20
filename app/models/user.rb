class User < AApplicationRecord
  devise :database_authenticatable, :registerable
  include DeviseTokenAuth::Concerns::User
  validates :email, :name, presence: true
end
