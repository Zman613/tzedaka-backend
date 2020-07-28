class UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update]

  def index
    users = User.all
    render json: users
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def new
    @user = User.new
  end

  def create
    user = user.create(user_params)
    if user.valid?
      redirect_to user_path(user)
    else
      flash[:messages] = user.errors.full_messages
      redirect_to new_user_path
    end
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      flash[:messages] = @user.errors.full_messages
      redirect_to edit_user_path(@user)
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :mod)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
