class PostsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
  end

  def show
    @user = User.find(params[:user_id])
    @post = Post.find(params[:id])
  end

  def new
    @new_post = Post.new
  end

  def create
    @user = current_user
    @post = Post.new(post_params)
    @post.user = @user

    if @post.save
      redirect_to user_path(@user.id)
    else
      render :new
    end

  end

  private

  def post_params
    params.require(:post).permit(:title, :text)
  end
end
