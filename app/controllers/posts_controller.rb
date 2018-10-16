class PostsController < ApplicationController

  def index
    if session[:user_id]
      user = User.find_by(id: session[:user_id])
      @name = user.name
      @image_url = user.image_url
    end

    @posts = Post.where(host_id: session[:user_id])
  end

  def input
    if session[:user_id]
      user = User.find_by(id: session[:user_id])
      @name = user.name
      @image_url = user.image_url
    end

    @post = Post.new
  end

  def show
    user = User.find_by(id: session[:user_id])
    @name = user.name

    @post_id = params[:id]

    apply_users = UserPost.where(post_id: params[:id])
    @applies = []
    apply_users.each do |apply_user|
      @applies << User.find_by(id: apply_user.user_id)
    end

    if Post.find_by(id: params[:id]).host_id == session[:user_id]
      @is_host = true
    else
      @is_host = false
    end

  end

  def join
    if session[:user_id]
      post_user = PostUser.new(user_id: session[:user_id], post_id: params[:id])
    end

    if @post.save
      redirect_to "/post/#{params[:id]}", notice: "参加表明しました。"
    else
      render 'show', notice: "もう一度ボタンを押してください。"
    end

  end

  def host
  end

  def create
    @post = Post.new(post_params)
    @post.host_id = session[:user_id]

    if @post.save
      redirect_to "/", notice: "作成完了しました。"
    else
      render 'input'
    end
  end

  def edit
  end

  def post_params
    params.require(:post).permit(:title, :description)
  end


end
