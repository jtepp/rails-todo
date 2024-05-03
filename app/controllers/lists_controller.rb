class ListsController < ActionController::Base
    layout "application"
    def index
        @lists = List.all
        @new_list = List.new
    end

end
