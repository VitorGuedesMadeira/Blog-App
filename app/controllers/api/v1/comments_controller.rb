class Api::V1::CommentsController < Api::V1::ApplicationController
    def index
      comments = Comment.where(user_id: params[:user_id])
      render json: comments, status: :ok
    end

    def create
      post = Post.find_by(id: params([:post_id]))
      user = User.find_by(id: params([:user_id]))
      comment = Comment.new(text: params[:comment][:text], post_id: post_id, user_id: user_id)

      if comment.save
        render json: comment, status: :ok
      else
        render json: comment.errors, status: :unprocessable_entity
      end
    end
  end