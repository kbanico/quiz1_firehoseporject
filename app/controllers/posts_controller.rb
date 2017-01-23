class PostsController < ApplicationController



  def create
    @post = Post.create(post_params)
    if @post.save
      flash[:success] = "The post was successfully created"
      redirect_to root_path
    else
      if @post.errors.any?
        errors = ""
        @post.errors.full_messages.each do |msg|
          errors += "#{msg}<br>"
        end

        flash[:danger] = errors
        redirect_to root_path

      end
      # flash[:danger] =
      # redirect_to root_path
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :description, :name)
  end

end
