class TasksController < ActionController::Base
    
    def create
        @task = Task.new(task_params)

        if @task.save
            redirect_back(fallback_location: root_path)
        else 
            puts "ERROR CREATING TASK"
            puts @task.errors.full_messages

            redirect_back fallback_location: root_path, status: :unprocessable_entity
            return
        end
    end

    def update
        @task = Task.find(params[:id])
        if @task.update(task_params)
            redirect_back(fallback_location: root_path)
        else
            puts "ERROR UPDATING TASK"
            puts @task.errors.full_messages

            redirect_back fallback_location: root_path, status: :unprocessable_entity
        end
    end

    def delete
        @task = Task.find(params[:id])
        if @task.delete
            redirect_back(fallback_location: root_path)
        else
            puts "ERROR DELETING TASK"
            puts @task.errors.full_messages
            
            redirect_back fallback_location: root_path, status: :unprocessable_entity
        end
    end

    private
    def task_params
        params.require(:task).permit(:label, :status, :list_id, :notes, :due)
    end
end
