class Api::V1::UsersController < Api::V1::ApplicationController
    def index
      users = User.all.order('id ASC')
      render json: users, status: :ok
    end

    def show
      user = User.find(params[:id])
      render json: user, status: :ok
    end

    def create
      @user = User.create(user_params)
      if @user.valid?
        token = encode_token({user_id: @user.id})
        render json: {user: @user, token: token}, status: :ok
      else
        render json: {error: 'Invalid inputs!'}, status: :unprocessable_entity
      end
    end

    def login
      @user = User.find_by(name: params[:name])
      if @user && @user.authenticate(params[:password])
        token = encode_token({used_id: @user.id})
        render json: {user: @user, token: token}, status: :ok
      end
    end

    private

    def user_params
      params.permit(:name, :email, :password)
    end
  end
