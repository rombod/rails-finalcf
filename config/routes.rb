Rails.application.routes.draw do
  



  
resources :orders, only: [:index, :show, :create, :destroy]
resources :products  


  root 'static_pages#index'

  get  '/index', to: 'static_pages#index'
  
  get  '/about', to: 'static_pages#about'

  get  '/contact', to: 'static_pages#contact'

  get 'landing_page', to: 'static_pages#landing_page'

  post 'static_pages/thank_you'

  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end








  