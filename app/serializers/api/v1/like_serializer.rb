module Api
  module V1
    class LikeSerializer < ActiveModel::Serializer
      attributes :id, :post, :created_at, :updated_at
    end
  end
end
