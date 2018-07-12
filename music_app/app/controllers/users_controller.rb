class UsersController < ApplicationController

  def show
    @user = current_user
    render :show
  end

  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.new(user_params)

    if @user.save!
      login_user!
    else
      flash.now[:errors] = ["Incorrect Email or Password"]
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
