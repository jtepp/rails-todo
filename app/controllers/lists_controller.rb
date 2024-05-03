class ListsController < ActionController::Base
    def index
        @lists = List.all
    end

end
