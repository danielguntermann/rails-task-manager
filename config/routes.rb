Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
# CREATE
get 'tasks', to: 'tasks#index'
# get 'details', to: `tasks#details`
get "tasks/new", to: "tasks#new"
get "tasks/:id", to: "tasks#show"
post "tasks", to: "tasks#create"
# patch "edit", to: "tasks#edit"
# delete "remove", to: "tasks#remove"
end
