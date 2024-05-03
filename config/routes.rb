Rails.application.routes.draw do
 
  post "/tasks/new", to: "tasks#create", as: :new_task

  post "/lists/new", to: "lists#create", as: :new_list
  get "/lists/:id", to: "lists#show", as: :list
  delete "/lists/:id", to: "lists#delete"


  root "lists#index"
end
