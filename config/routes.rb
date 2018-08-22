Rails.application.routes.draw do
  # mount Chat::Engine => "/chat", as: "chat"
  get 'messages/index'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :requests do
  resources :offers do
    resources :messages
    end
  end
end
