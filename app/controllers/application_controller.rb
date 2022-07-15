class ApplicationController < ActionController::Base
  def current_user
    User.first
  end

  def current_post
    User.first.posts.first
  end
end
