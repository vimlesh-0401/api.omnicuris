class OrderService
    def call params
        order = Order.create!(email: params[:email])
        order.transaction do
            params[:line_item_attributes].each do |attributes|
                order.line_items.create!(attributes)
            end
            order.update_total
        end
        order
    end
end