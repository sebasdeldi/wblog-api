module Api
  module V1
    class PostsController < ApiController
      before_action :authenticate_user!

      def index
        render_paginated Post.all, each_serializer: Api::V1::PostSerializer
      end

      def show
        render json: post
      end

      def create
        post = Post.new(post_params)
        if post.save!
          render json: post, status: :created, serializer: Api::V1::PostSerializer
        else
          render json: { errors: post.erros }, status: :precondition_failed
        end
      end

      private

      def post
        @post ||= Post.find(params.require(:id))
      end

      def post_params
        params.require(:post).permit(:title, :description, :status, :user_id)
      end
    end
  end
end
