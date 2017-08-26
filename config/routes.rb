Rails.application.routes.draw do
  devise_for :users
  resources :locations do 
    member do 
      get :find_near_by_locations
    end
  end
  resources :cities
  resources :states
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
