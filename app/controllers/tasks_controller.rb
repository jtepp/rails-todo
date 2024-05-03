class TasksController < ActionController::Base
    def create
        @task = Task.new(task_params)

        unless @task.save
            puts "ERROR CREATING TASK"
            puts @task.errors.full_messages
        end
        redirect_to root_path
    end

    def update
        @task = Task.find(params[:id])
        unless @task.update(task_params)
            puts "ERROR UPDATING TASK"
            puts @task.errors.full_messages
        end
        redirect_to root_path
    end

    def delete
        @task = Task.find(params[:id])
        unless @task.delete
            puts "ERROR DELETING TASK"
            puts @task.errors.full_messages
        end
        redirect_to root_path
    end

    private
    def task_params
        params.require(:task).permit(:label, :status, :list_id, :notes, :due)
    end
end
