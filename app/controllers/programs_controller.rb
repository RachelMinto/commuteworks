class ProgramsController < ApplicationController
  def index
    @programs = Program.all
  end

  def register
    respond_to do |format|
    format.html do
      if registered_for?(params[:id])
        flash[:error] = "You've already registered for that program."
      else
        current_user.programs << Program.find_by(slug: params[:id])
        flash[:notice] = "Registration successful."
        redirect_to :back
      end
    end

    format.js
    end
  end
end

