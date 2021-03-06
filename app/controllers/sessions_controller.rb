class SessionsController < ApplicationController
  #we don't want to ensure_logged-in yet, since we're just now creating the login session
  skip_filter :ensure_logged_in

  def new

  end

  def create
    user = User.find_by_email(params[:email]).try(:authenticate, params[:password])

    if user
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      flash.now.alert = "invalid email or password"
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path, notice:"You've logged-out."
  end
end

