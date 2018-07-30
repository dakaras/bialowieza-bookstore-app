class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to welcome_path, notice: "Welcome back #{@user.name}!"
    else
      flash[:notice] = "Incorrect email or password. Please try logging in again."
      render 'sessions/new'
    end
  end

  def destroy
    reset_session
    redirect_to root_path, notice: "You have successfully logged out."
  end
end
