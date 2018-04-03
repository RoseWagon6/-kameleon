Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # par défaut nous sommes dans le cas du renter :
  resources :costumes, only: [:index, :show] do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: [:index, :show]

  # profile utilisateur
  resource :profile, only: [:show, :edit, :update]

  # namespace pour le owner afin de le différencier du renter
  namespace :owner do
    resources :costumes, only: [:index, :show, :new, :create]
    resources :bookings, only: [:index, :show] do
      member do
        patch :accept
        patch :refuse
      end
    end
  end
end
