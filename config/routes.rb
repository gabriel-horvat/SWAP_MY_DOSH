Rails.application.routes.draw do
  # mount Chat::Engine => "/chat", as: "chat"
  get 'messages/index'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :requests do
  resources :offers, only: [:new, :create] do
    resources :messages
    post "/confirm", to: "offers#confirm"
    end
  end

  get "/personal", to: "requests#personal"
  resources :offers, only: [:index]
end
