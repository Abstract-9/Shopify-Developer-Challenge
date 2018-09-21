Rails.application.routes.draw do

  resources :shops do
    resources :orders do
      resources :products do
        resources :LineItems, controller: 'items'
      end
    end
  end

  get "shops/:id/orders/:id/LineItems", to: "orders#get_items"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
