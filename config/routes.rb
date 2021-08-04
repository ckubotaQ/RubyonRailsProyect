Rails.application.routes.draw do
  get 'home/index'
  get "articles/new", to: "articles#new"
  post "articles", to: "articles#create"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
