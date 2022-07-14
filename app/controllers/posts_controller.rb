class PostsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @post = Post.where(user: @user)
  end

  def show
    @posts = Post.find(params[:id])
  end
end
