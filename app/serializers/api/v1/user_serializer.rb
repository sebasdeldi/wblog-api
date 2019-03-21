module Api
  module V1
    class UserSerializer < ActiveModel::Serializer
      attributes :id, :email, :name
      has_many :posts, serializer: SimplePostSerializer
      has_many :likes
      has_many :reblogs
    end
  end
end
