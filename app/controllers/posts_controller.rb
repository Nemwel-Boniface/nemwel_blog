class PostsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @post = Post.where(user: @user)
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @posts = Post.new
  end
end
