module Api
  module V1
    class PostSerializer < ActiveModel::Serializer
      attributes :id, :title, :description, :status, :user
    end
  end
end
