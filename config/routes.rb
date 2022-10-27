Rails.application.routes.draw do
  devise_for :users
  root to: "feelings#index"

  resources :feelings do
    resources :orders, only: %i[new create]
  end
  resources :orders, only: %i[index]
end
