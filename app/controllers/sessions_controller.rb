class SessionsController < ApplicationController
  def new; end

  def create
    user = User.where(email: params[:email]).first

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:notice] = "Login successful. Welcome, #{user.first_name}."
      redirect_to root_path
    else  
      flash[:error] = "There is something wrong with your email or password."
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    flash['notice'] = "You've succesfully logged out."
    redirect_to root_path
  end
end