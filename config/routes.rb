Rails.application.routes.draw do
  resources :locations do 
    member do 
      get :find_near_by_locations
    end
  end
  resources :cities
  resources :states
  get 'home/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
