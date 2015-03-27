class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by_email(params[:email])

    if @user && @user.authenticate(params[:password])
      signin @user
      redirect_to root_url, notice: "Signed in!"
    else
      flash.now.alert = "Email or password is invalid."
      render :new
    end
  end

  def destroy
    reset_session
    redirect_to root_url, notice: "Signed out!"
  end
end
