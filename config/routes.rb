Rails.application.routes.draw do
  resources :items, only: [:index, :create]
  resources :users, only: [:show,:create] do
    resources :items, only: [:show, :index, :create]
  end
end
