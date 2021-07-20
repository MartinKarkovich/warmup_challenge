module Api 
    module V1 
        class PostsController < ApiController
            before_action :set_post, only: [:show,:update,:destroy]
            def index
                @posts = set_posts
                render json:@posts
            end

            def show
                render json: @post
            end

            def update
                if Post.update(parameters)
                    render json: @post
                else
                    render json: @post.errors, status: :unprocessable_entity
            end

            def destroy
                @post.destroy
            end

            def create
                @post = Post.new(parameters)
                if @post.save
                    render json: @post, status: :created
                else
                    render json: @post.errors, status: :unprocessable_entity
            end   
            
            private

            def set_posts
                posts = Post.for_desc
                posts = Post.for_title(title) if title
                posts = Post.for_category(category_id) if category_id             
            end

            # Filters
            def title
                params[:title]
            end
            
            def category
                params[:category]
            end

            ############

            def set_character
            @post = Post.find(params[:id])
            end

            def parameters
                params.require(:post).permit(:title,:content,:image,:category_id,:date_of_creation)
            end        
        end
    end
end