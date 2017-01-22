class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def create
    @post = Post.create(post_params)
    if @post.save
      flash[:success] = "The post was successfully created"
      redirect_to root_path
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :description)
  end

end
