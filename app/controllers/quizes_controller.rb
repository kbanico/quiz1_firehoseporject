class QuizesController < ApplicationController
  def index
    @posts = Post.all
  end




end
