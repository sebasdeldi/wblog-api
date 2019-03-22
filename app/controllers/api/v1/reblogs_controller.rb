module Api
  module V1
    class ReblogsController < ApiController
      before_action :authenticate_user!

      def create
        reblog = Reblog.new(reblog_params)
        if reblog.save
          render json: reblog, status: :created, serializer: Api::V1::ReblogSerializer
        else
          render json: { errors: reblog.errors }, status: :precondition_failed
        end
      end

      private

      def reblog_params
        params.require(:reblog).permit(:post_id, :user_id)
      end
    end
  end
end
