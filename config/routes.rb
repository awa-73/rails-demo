Rails.application.routes.draw do
  resources :microposts
  resources :users
  root "users#index"
  root "toys#index"
end
