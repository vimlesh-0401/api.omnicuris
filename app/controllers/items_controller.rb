class ItemsController < ApplicationController
    before_action :find_item, only: [:update, :destroy]

    def index
        items = Item.all
        render json: items.json
    end
    
    def create
        item = Item.new(permitted_params)
        if item.save
            render json: item.as_json, status: :ok
        else
            render status: :unprocessable_entity, json: item.as_json
        end
    end
    
    
    def update
        if @item.update(permitted_params)
            render json: @item.as_json, status: ok
        else
            render status: :unprocessable_entity, json: @item.as_json
        end
    end
    
    
    def destroy
        if @item.destroy
            render json: @item.as_json, status: ok
        else
            render status: :unprocessable_entity, json: @item.as_json
        end
    end
    private
        def find_item
            @item = Item.find(params[:id])
        end
        
        def permitted_params
            params.require(:item).permit(:name, :description, :price, :quantity, :category)
        end
end
