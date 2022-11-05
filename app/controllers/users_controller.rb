class UsersController < ApplicationController
  def index
    @users_all = User.all.order('id ASC')
  end

  def show
    @user = User.find(params[:id])
  end
end
