module BasicActions
    extend ActiveSupport::Concern
    
    def index
        @entities = api_resource.all
        render json: @entities.as_json
    end
    
    def create
        entity = api_resource.new(permitted_params)
        if entity.save
            render json: entity.as_json, status: :ok
        else
            render status: :unprocessable_entity, json: entity.as_json
        end
    end
    
    
    def update
        if @entity.update(permitted_params)
            render json: @entity.as_json, status: :ok
        else
            render status: :unprocessable_entity, json: @entity
        end
    end
    
    
    def destroy
        if @entity.destroy
            render json: @entity.as_json, status: :ok
        else
            render status: :unprocessable_entity, json: @entity
        end
    end
    
    def api_resource
        raise "Not implemented"
    end
    
end