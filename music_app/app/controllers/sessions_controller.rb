class SessionsController < ApplicationController

  def new
    render :new
  end

  def create
    login_user!
  end

  def destroy
  end
end
