class OrdersController < ApplicationController
    include BasicActions
    
    def api_resource
        Order
    end

    def place_order
        orderService = OrderService.new
        order = orderService.call(permitted_params)
        if order.valid?
            render json: order.as_json, status: :ok
        else
            render status: :unprocessable_entity, json: order.as_json
        end
    end
    
    private
        def permitted_params
            params.require(:order).permit(:email, :line_item_attributes => [ :item_id, :quantity ])
        end
end
