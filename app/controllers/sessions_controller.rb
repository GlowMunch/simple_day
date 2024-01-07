class SessionsController < ApplicationController

  #login form
  def new
  end

  def create
    user = User.find_by(username: params[:username])
    require 'pry'; binding.pry
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:success] = "Welcome, #{user.username}!"
      if user.admin?
        puts "admin"
        redirect_to admin_dashboard_path
      elsif user.manager?
        puts "manager"
        redirect_to root_path
      elsif
        puts "default session"
        redirect_to user_path(user.id)
      end
    else
      puts "bad credentials"
      flash[:error] = "Sorry, your credentials are bad."
      render :new
    end
  end

  def destroy
    reset_session
    flash[:message] = "You have been logged out."
    render :new
  end

end