class TasksController < ActionController::Base
    def create
        @task = Task.new(task_params)

        if @task.save
            redirect_to root_path
        else
            render :index, status: :unprocessable_entity
        end

    end

    private
    def task_params
        params.require(:task).permit(:label, :status, :notes, :due)
    end

end
