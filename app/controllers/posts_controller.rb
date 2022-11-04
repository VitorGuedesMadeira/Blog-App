class PostsController < ApplicationController
  load_and_authorize_resource

  def index
    @user = User.find(params[:user_id])
    @posts = @user.posts
  end

  def show
    @user = User.find(params[:user_id])
    @post = Post.find(params[:id])
    @comments = @post.comments
  end

  def new
    @new_post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user

    if @post.save
      redirect_to user_path(current_user.id)
    else
      render :new
    end
  end

  def destroy
    @post = Post.find(params[:id]).destroy
    respond_to do |format|
      format.html { redirect_back_or_to user_path(current_user), notice: 'Deleted!' }
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :text)
  end
end
