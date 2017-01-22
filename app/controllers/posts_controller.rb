class PostsController < ApplicationController



  def create
    @post = Post.create(post_params)
    if @post.save
      flash[:success] = "The post was successfully created"
      redirect_to root_path
    else
      flash[:danger] = "Sorry the post was not created please try again later"
      redirect_to root_path
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :description, :name)
  end

end
