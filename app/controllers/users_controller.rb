class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]
  before_action :require_user, except: [:new, :create]

  def show

  end

  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      flash['success'] = "Profile creation successful. Welcome, #{@user.first_name} #{@user.last_name}."
      redirect_to root_path
    else
      render :new
    end
  end

  def update
    if @user.update(user_params)
      flash['notice'] = 'Your profile has been updated.'
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  private
  def set_user
    @user = User.find_by id: params[:id]
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :address, :apt, :city, :state, :zipcode, :employer_id, :email, :password, commute_mode_ids: [])
  end
end
