class Post < ApplicationRecord
  belongs_to :user
  enum status: { public: 0, private: 1 }
  has_many :reblogs, dependent: :destroy
  has_many :likes, dependent: :destroy
end
