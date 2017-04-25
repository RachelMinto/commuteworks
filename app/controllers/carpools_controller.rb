class CarpoolsController < ApplicationController
  before_action :set_carpool, only: [:new]  
  before_action :require_user, except: [:index]

  def index
  end

  def new
  end

  def create
    new_carpool = carpool_params
    new_carpool['user_id'] = current_user.id
    @carpool = Carpool.new(new_carpool)

    if validate_carpool_users
      if @carpool.save
        flash[:notice] = "Your carpool has been sucessfully registered. Within 1 - 2 weeks an administrator will verify your eligibility and send you an email with your carpool status."
        register_carpool_users
        redirect_to root_path
      else
        render :new
      end
    else

    end
  end  

  private

  def set_carpool
    @carpool = Carpool.new
  end

  def carpool_params
    params.require(:carpool).permit(:origin_location, :parking_location, :days_per_week, :carpooler_2_email, :carpooler_3_email, :carpooler_4_email)
  end

  def validate_carpool_users
    return true
  end

  def register_carpool_users

  end
end