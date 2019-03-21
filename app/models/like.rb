class Like < ApplicationRecord
  belongs_to :post
  belongs_to :user
  validates :user, :post, presence: true
end
