class Api::V1::SessionsController < ApplicationController

  #login form
  def new
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      flash[:success] = "Welcome, #{@user.username}!"
      if @user.admin?
        redirect_to admin_dashboard_path
      elsif @user.manager?
        redirect_to root_path
      elsif @user.default?
        redirect_to root_path
      end
    else
      flash[:error] = "Sorry, your credentials are bad."
      render :new
    end
  end

  def destroy
    reset_session
    flash[:message] = "You have been logged out."
    redirect_to root_path
  end

end