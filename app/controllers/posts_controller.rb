class PostsController < ApplicationController

  def index
    if session[:user_id]
      redirect_to "/host"
    end
  end

  def input
  end

  def show
  end

  def host
  end

  def edit
  end

end
