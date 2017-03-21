Rails.application.routes.draw do
  



  
  


  devise_for :users
  
resources :orders, only: [:index, :show, :create, :destroy]


  get 'contact', to: 'messages#new', as: 'contact'
post 'contact', to: 'messages#create' 


  root 'static_pages#index'

  get  '/index', to: 'static_pages#index'
  
  get  '/about', to: 'static_pages#about'

  get  '/contact', to: 'static_pages#contact'

  get 'landing_page', to: 'static_pages#landing_page'


  resources :products do
  resources :comments
  end
  resources :users

  

  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end








  