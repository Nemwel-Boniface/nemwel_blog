class CommentsController < ApplicationController
  load_and_authorize_resource

  def new
    @comment = Comment.new
  end

  def create
    @post = current_post
    @comment = @post.comments.new(comment_params)
    @comment.post_id = @post.id
    @comment.author_id = current_user.id

    if @comment.save
      flash[:success] = 'Comment was created successfully'
      redirect_to "/users/#{@post.author.id}/posts/#{@post.id}"
    else
      flash.now[:error] = 'Error: Comment could not be created!!'
      render :new
    end
  end

  def comment_params
    params.require(:comment).permit(:text)
  end
end
