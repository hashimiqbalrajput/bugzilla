Rails.application.routes.draw do
  get 'hello_world', to: 'hello_world#index'
  devise_for :users
  resources :projects

  root 'home#index'
end