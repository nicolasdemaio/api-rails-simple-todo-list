class TasksController < ApplicationController

  #GET /tasks
  def index
    @tasks = Task.all

    render json: @tasks, status: :ok
  end

  #GET /tasks/{id}
  def show
    param_id = params['id']
    begin
      @task = Task.find(param_id)
      render json: @task, status: :ok
    rescue
      render json: TaskNotFoundException.new(param_id), status: :not_found
    end

  end

  # POST /tasks
  def create
    @task = Task.new(title: params['title'], description: params['description'], priority: params['priority'].upcase)

    if @task.save
      render json: @task, status: :created, location: @task
    else
      render json: @task.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tasks/{id}
  def destroy
    Task.delete(params['id'])
    render status: :ok
  end

end
