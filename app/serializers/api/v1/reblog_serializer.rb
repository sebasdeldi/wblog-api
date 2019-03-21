module Api
  module V1
    class ReblogSerializer < ActiveModel::Serializer
      attributes :id, :post_id
    end
  end
end
