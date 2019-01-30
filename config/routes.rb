Rails.application.routes.draw do
  
  resources :items
  resources :orders do
    collection do
      post :place_order
    end
    resources :line_items
  end
end
