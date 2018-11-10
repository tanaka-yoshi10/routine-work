class HistoriesController < ApplicationController
  before_action :set_routine

  def new
  end

  private

  def set_routine
    @routine = Routine.find(params[:routine_id])
  end
end
