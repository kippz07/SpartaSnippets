Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :snippet
  resources :snippets
  resources :pi
  get '/', to: "snippet#index"
end
