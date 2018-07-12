class SessionsController < ApplicationController

  def new
    render :new
  end

  def create
    @user = User.find_by_credentials(params[:user][:email], params[:user][:password])

    if @user.nil?
      flash.now[:errors] = ["Incorrect username/password"]
      render :new
    else
      login_user!
    end
  end

  def destroy
      logout_user!
      render :new
  end
end
