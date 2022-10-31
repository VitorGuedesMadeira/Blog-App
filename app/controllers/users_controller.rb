class UsersController < ApplicationController
  def index
    @users_all = User.all
  end

  def show
    @user = User.find(params[:id])
  end
end
