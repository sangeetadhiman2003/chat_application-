class SessionsController < ApplicationController

  def create
    user = User.find_by(username: params[:session][:username])
    if user
      log_in(user)
    else
      render 'new'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_path
  end

  # def create
  #   user = User.find_by(email: params[:session][:email])

  #   if user && user.authenticate(params[:session][:password])
  #     session[:user_id] = user.id
  #     redirect_to root_url, notice: 'Logged in!'
  #   else
  #     flash.now[:alert] = 'Invalid email or password'
  #     render 'new'
  #   end
  # end

  # def destroy
  #   session[:user_id] = nil
  #   redirect_to root_url, notice: 'Logged out!'
  # end
end
