module Api
  module V1
    class SimplePostSerializer < ActiveModel::Serializer
      attributes :id, :title, :description, :status
    end
  end
end
