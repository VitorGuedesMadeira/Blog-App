class CommentsController < ApplicationController
  load_and_authorize_resource

  def create
    @user = Post.find(params[:user_id])
    @post = Post.find(params[:post_id])
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    @comment.post = @post

    if @comment.save
      redirect_to user_post_path(@user, @post)
    else
      render :new
    end
  end

  def destroy
    @comment = Comment.find(params[:id]).destroy

    respond_to do |format|
      format.html { redirect_to user_posts_path(current_user), notice: 'Comment deleted!' }
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text)
  end
end
