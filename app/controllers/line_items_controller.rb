class LineItemsController < ApplicationController
    include BasicActions
    
    def api_resource
        LineItem
    end

    private
        def permitted_params
            params.require(:line_item).permit(:item_id, :order_id, :quantity)
        end
end
