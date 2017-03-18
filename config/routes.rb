Rails.application.routes.draw do
  



  resources :orders, only: [:index, :show, :create, :destroy]
  resources :products

post 'static_pages/thank_you'


  root :to => 'static_pages#index'
get '/index' => 'static_pages#index'
get '/about' => 'static_pages#about'
get '/contact' => 'static_pages#contact'
get '/landing_page' => 'static_pages#landing_page'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
