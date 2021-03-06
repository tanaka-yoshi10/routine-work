class RoutinesController < ApplicationController
  before_action :set_routine, only: %i(show update edit destroy)

  def index
    @routines = Routine.all.order(:id)
  end

  def show
    redirect_to new_routine_history_url(@routine)
  end

  def new
    @routine = Routine.new
  end

  def create
    @routine = Routine.new(routine_params)
    if @routine.save
      redirect_to routines_url, notice: '追加しました'
    else
      render :new
    end
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
    @routine.destroy!
    redirect_to routines_url, notice: '削除しました'
  end

  private

  def set_routine
    @routine = Routine.find(params[:id])
  end

  def routine_params
    params.require(:routine).permit(%i(name checklist_url image rrule), selections_attributes: %i(id title _destroy))
  end
end
