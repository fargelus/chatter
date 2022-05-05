class PostsController < ApplicationController
  def index
    @posts = Post.order(created_at: :desc)
    @post = Post.new
  end

  # POST /posts or /posts.json
  def create
    Post.create(post_params)
    redirect_to posts_path
  end

  private

  # Only allow a list of trusted parameters through.
  def post_params
    params.require(:post).permit(:body)
  end
end
