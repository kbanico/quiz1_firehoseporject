class QuizesController < ApplicationController
  def index
    #@posts = Post.all
     @posts = Post.order("created_at DESC").all.paginate(:page => params[:page], :per_page => 6)
  end




end
