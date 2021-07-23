# frozen_string_literal: true

module Api
  module V1
    class PostsController < ApiController
      before_action :set_post, only: [:show, :update, :destroy]
      before_action :is_post_from_current_user?, only: [:update, :destroy]

      def index
        @posts = set_posts
        render json: @posts, each_serializer: ShowPostSerializer
      end

      def show
        render json: @post, serializer: StandardPostSerializer
      end

      def update
        if Post.update(parameters)
          render json: @post, serializer: StandardPostSerializer
        else
          render json: @post.errors, status: :unprocessable_entity
        end
      end

      def destroy
        @post.destroy
      end

      def create
        @post = Post.new(parameters)
        @post.user_id = current_user.id
        if @post.save
          render json: @post, serializer: StandardPostSerializer, status: :created
        else
          render json: @post.errors, status: :unprocessable_entity
        end
      end

        private
          def is_post_from_current_user?
            if current_user.id != @post.user_id
              render json: { "error": "not your stuff dude" }
            end
          end

          def set_posts
            posts = Post.all.order(created_at: :desc)
            posts = posts.for_title(title) if title
            posts = posts.for_category(category_id) if category_id
            posts
          end

          # Filters
          def title
            params[:title]
          end

          def category_id
            params[:category_id]
          end
          ########################


          def set_post
            @post = Post.find(params[:id])
          end

          def parameters
            params.require(:post).permit(:title, :content, :image, :category_id)
          end
    end
  end
end
