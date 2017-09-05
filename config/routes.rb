Rails.application.routes.draw do
  devise_for :users
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :snippets
  resources :pi
  # get '/message', to: "messages#index"
  root to: "snippets#index"
  get '/', to: "snippets#index"
end
