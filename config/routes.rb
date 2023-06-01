Rails.application.routes.draw do
  root "articles#index", as: :articles
  get "articles/new", to: "articles#new"
  post "/", to: "articles#create"
  get "articles/:id", to: "articles#find"
  get "articles/edit/:id", to: "articles#edit"
  patch "/articles/:id", to: "articles#update"
  delete "articles/:id", to: "articles#destroy"
end
