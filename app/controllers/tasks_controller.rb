class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end
  def new
    @task = Task.new
  end
  def show
    @task = Task.find(params[:id])
  end

  def create
    task = Task.new(task_params)
    task.save!
    raise
    # redirect_to tasks_path
  end

  private

  def task_params
    params.require(:@task).permit(:title, :details)
  end
end
