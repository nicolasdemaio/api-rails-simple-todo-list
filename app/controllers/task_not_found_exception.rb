class TaskNotFoundException

  def initialize(task_id)
    @task_id = task_id
    @error = 'Task was not found'
  end

end
