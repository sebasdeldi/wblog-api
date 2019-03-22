module Api
  module V1
    class XkcdRequestsController < ApiController
      before_action :authenticate_user!

      def import
        post = Post.new(arrange_params)
        if post.save
          render json: post, status: :created, serializer: Api::V1::PostSerializer
        else
          render json: { errors: post.errors }, status: :precondition_failed
        end
      end

      private

      def search_params
        params.require(:comic_id)
      end

      def arrange_params
        post_params = JSON.parse(XkcdService.new(search_params).comic)
        post_params = { title: post_params['safe_title'], description: post_params['transcript'].truncate(400) }
        post_params[:user_id] = current_user.id
        post_params
      end
    end
  end
end
