class HistoriesController < ApplicationController
  before_action :set_routine
  before_action :set_history, only: %i(destroy)

  def index
    @histories = @routine.histories.order(:done_at)
  end

  def new
    @history = @routine.histories.build
  end

  def create
    @history = @routine.histories.build(history_params)
    if @history.save
      redirect_to routines_url, notice: '記録しました'
    else
      render :new
    end
  end

  def destroy
    @history.destroy!
    redirect_to routine_histories_url(@routine), notice: '削除しました'
  end

  private

  def set_routine
    @routine = Routine.find(params[:routine_id])
  end

  def set_history
    @history = @routine.histories.find(params[:id])
  end

  def history_params
    params.require(:history).permit(%i(done_at menu memo))
  end
end
