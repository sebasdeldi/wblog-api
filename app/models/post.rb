class Post < ApplicationRecord
  belongs_to :user
  enum status: { free_access: 0, restricted_access: 1 }
  has_many :reblogs, dependent: :destroy
  has_many :likes, dependent: :destroy
  validates :user, :title, :description, :status, presence: true
  validates :description, length: { maximum: 400 }
  validates :title, uniqueness: true
end
