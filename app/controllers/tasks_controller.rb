class TasksController < ApplicationController
  before_action :set_list

  def index
    @tasks = Task.new
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    @task = @list.tasks.new(task_params)

    if @task.save
      redirect_to board_list_path(@list.board_id, @list)
    else
      render :new
    end
  end

  def destroy
    @task.destroy
    redirect_to board_list_path(@list.board_id, @list)
    red
  end

  private

  def set_list
    @list = List.find(params[:list_id])
  end

  def task_params
    params.require(:task).permit(:task_name)
  end
end
