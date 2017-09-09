Rails.application.routes.draw do
  devise_for :users
  devise_for :admins
  resources :snippets
  resources :pi
  resources :slack
  root to: "snippets#index"
  get '/', to: "snippets#index"
end
