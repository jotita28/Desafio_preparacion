Rails.application.routes.draw do

  get 'products/index'  
  get 'products/show' 
  

  resources :products, only: [:create, :destroy]

  root 'products#index'

end
