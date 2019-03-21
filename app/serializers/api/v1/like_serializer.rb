module Api
  module V1
    class LikeSerializer < ActiveModel::Serializer
      attributes :id, :post_id, :created_at, :updated_at
    end
  end
end
