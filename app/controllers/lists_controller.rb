class ListsController < ActionController::Base
    layout "application"
    def index
        @lists = List.all
        @new_list = List.new
    end

    def show
        @list = List.find(params[:id])
    end

    def create
        @list = List.new(list_params)

        if @list.save
            redirect_to root_path
        else
            render :index, status: :unprocessable_entity
        end

    end

    def delete
        @list = List.find(params[:id])
        if @list.delete
            redirect_to root_path
        else
            render :index, status: :unprocessable_entity
        end
    end

    private
    def list_params
        params.require(:list).permit(:title)
    end

end
