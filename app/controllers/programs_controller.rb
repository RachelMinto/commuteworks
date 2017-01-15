class ProgramsController < ApplicationController
  def index
    @programs = Program.all
  end

  def register
    binding.pry
    # Add user_id to programs table. How do I do this?
  end
end
