Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :snippets
  resources :pi
  get '/message', to: "messages#index"
  get '/', to: "snippets#index"
end
