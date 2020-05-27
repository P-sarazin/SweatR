class UsersController < ApplicationController
  before_action :set_current_user, only:[:show, :edit, :update, :destroy]

  def home
    set_current_user
  end

  def show
    @lesson = Lesson.find(params[:lesson_id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      sign_in(@user)
      redirect_to @user
    else
      render :new
    end
  end

  def edit
  end

  def update
    @user.update(user_params_id)
    redirect_to show_user_path(@user)
  end

  def destroy
    @user.destroy
    redirect_to pages_path
  end

  private

  def user_params
    params.require(:user).permit(:encrypted_password, :email)
  end

  def set_current_user
    if session[:user_id]
      @current_user = User.find(session[:user_id])
    end
  end
end
