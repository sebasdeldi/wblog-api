module Api
  module V1
    class UserSerializer < ActiveModel::Serializer
      attributes :id, :email, :name, :created_at, :updated_at
      has_many :posts, serializer: SimplePostSerializer
      has_many :likes
      has_many :reblogs
    end
  end
end
