class TasksController < ApplicationController

  before_action :set_task, only: [:show, :edit, :update, :delete]

  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to task_path(@task)
  end

  def edit
  end

  def update
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  def destroy
    @task = Task.destroy
    redirect_to task_path(@task)
  end

  private

  def task_params
    params.require(:task).permit(:title, :description, :priority, :responsibility)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
