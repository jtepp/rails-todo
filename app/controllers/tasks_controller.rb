class TasksController < ActionController::Base
    def create
        puts "TEST HERE"

        @task = Task.new(task_params)

        puts @task

        # if @task.save
        #     redirect_to root_path
        # else
        #     render :index, status: :unprocessable_entity
        # end

    end

    private
    def task_params
        params.require(:task).permit(:label, :status, :list_id, :notes, :due)
    end

end
