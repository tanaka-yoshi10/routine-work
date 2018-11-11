class RoutinesController < ApplicationController
  before_action :set_routine, only: %i(update edit destroy)

  def index
  end

  def new
  end

  def create
  end

  def update
    if @routine.update(routine_params)
      redirect_to routines_url, notice: '更新しました'
    else
      render :edit
    end
  end

  def edit
  end

  def destroy
  end

  private

  def set_routine
    @routine = Routine.find(params[:id])
  end

  def routine_params
    params.require(:routine).permit(%i(name checklist_url image rrule))
  end
end
