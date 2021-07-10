class SchedulesController < ApplicationController
  def index
    @schedules = Schedule.all.order(schedule_start: "ASC")
  end

  def new
    @schedule = Schedule.new    
  end

  def create
    @schedule = Schedule.new(params.require(:schedule).permit(:title, :schedule_start, :schedule_end, :all_day, :memo))
    if @schedule.save
      flash[:notice] = "新規スケジュールを作成しました"
      redirect_to("/schedules/index")
    else
      flash[:notice] = "スケジュール保存に失敗しました"
      render "schedules/new"
    end
  end

  def show
    @schedule = Schedule.find(params[:id])
  end

  def edit
    @schedule = Schedule.find(params[:id])
  end

  def update
    @schedule = Schedule.find(params[:id])
    if @schedule.update(params.require(:schedule).permit(:title, :schedule_start, :schedule_end, :all_day, :memo))
      flash[:notice] = "スケジュールを更新しました"
      redirect_to("/")
    else
      flash[:notice] = "スケジュールの更新に失敗しました"
      render "schedules/edit"
    end   
  end

  def destroy
    @schedule = Schedule.find(params[:id])
    @schedule.destroy
    flash[:notice] = "スケジュールを削除しました"
    redirect_to("/")
  end

end
