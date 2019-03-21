module Api
  module V1
    class LikeSerializer < ActiveModel::Serializer
      attributes :id, :post_id
    end
  end
end
