class ApplicationController < ActionController::API
    before_action :find_entity
    after_action :set_response_header
    
    private
        def find_entity
            @entity = api_resource.find params[:id] if params[:id].present?
        end
        
        # TODO: Set Pagination values in header
        def set_response_header
            
        end
end
