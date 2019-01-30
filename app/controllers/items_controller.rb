class ItemsController < ApplicationController
    include BasicActions
    
    def api_resource
        Item
    end
    
    private
        def permitted_params
            params.require(:item).permit(:name, :description, :price, :quantity, :category)
        end
end
