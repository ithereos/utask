class TasksController < ApplicationController
 
  def new
    @task = Task.new
  end

  def update
    @task = Task.find(params[:id])
    if @task.update_attributes(task_params)
      flash[:success] = "Profile updated"
      redirect_to @task
    else
      render 'edit'
    end
  end

  def create
    Task.create(task_params)
  end

   def destroy
    Task.find(params[:id]).destroy
    flash[:success] = "User deleted."
    redirect_to tasks_url
  end

  def edit
    @task = Task.find(params[:id])
  end

  def show
  end

  private

    def task_params
      params.require(:task).permit(:description,:list_id)
    end
end
