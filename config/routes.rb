Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :v1, defaults: { format: :json } do
    resources :issues, only: [:create, :index, :show]
  end
  namespace :v1, defaults: { format: :json } do
    
    resources :repositories, only: [:index] do
      resources :issues, only: [:index], controller: 'repositories'
    
    end
  end
  
end
