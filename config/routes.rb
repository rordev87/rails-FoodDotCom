Rails.application.routes.draw do
  root to: "static_pages#root"

  namespace :api, defaults: { format: :json } do
    resources :users, only: [:create]
    resource :session, only: [:create, :destroy]
    resources :restaurants, only: [:index]
    resources :restaurants, only: [:show] do
      resources :menu_items, only: [:index]
      resources :orders, only: [:create]
    end
  end
end
