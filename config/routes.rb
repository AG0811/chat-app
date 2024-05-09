Rails.application.routes.draw do
  devise_for :users # 追加する※本来、自動で追加されるもの
  # get 'messages/index'
  # Defines the root path route ("/")
  # root "articles#index"
  root to: "rooms#index"
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create]
end
