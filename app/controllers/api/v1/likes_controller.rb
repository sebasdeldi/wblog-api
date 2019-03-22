module Api
  module V1
    class LikesController < ApiController
      before_action :authenticate_user!

      def create
        like = Like.new(like_params)
        if like.save
          render json: like, status: :created, serializer: Api::V1::LikeSerializer
        else
          render json: { errors: like.errors }, status: :precondition_failed
        end
      end

      private

      def like_params
        params.require(:like).permit(:post_id, :user_id)
      end
    end
  end
end
