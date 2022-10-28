Rails.application.routes.draw do
  devise_for :users
  root to: "feelings#index"

  resources :feelings do
    resources :orders, only: %i[new create]
  end
  resources :orders, only: %i[index]

  resources :feelings do
    resources :anuncios, only: %i[new create]
  end
  resources :anuncios, only: %i[index]
end
