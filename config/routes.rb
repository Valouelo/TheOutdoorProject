Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "profile", to: "pages#profile"


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  resources :activities do
    collection do
      get :index_with_map
    end
    resources :reviews
    resources :bookings, only: [:create, :update]
    resources :chatrooms, only: :show do
      #activity/:id/chatrooms/:id
      resources :messages, only: :create
    end
  end
# activities/:id/chatrooms/:id/messages

  # Defines the root path route ("/")
  # root "posts#index"
end
