module Api
  module V1
    class PostSerializer < ActiveModel::Serializer
      attributes :id, :title, :description, :status, :user, :created_at, :updated_at
    end
  end
end
