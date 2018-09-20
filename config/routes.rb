Rails.application.routes.draw do

  resources :shops, :products, :orders
  resources :LineItems, controller: 'Items'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
