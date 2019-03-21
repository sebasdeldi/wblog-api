module Api
  module V1
    class SimplePostSerializer < ActiveModel::Serializer
      attributes :id, :title, :description, :status, :created_at, :updated_at
    end
  end
end
