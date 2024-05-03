Rails.application.routes.draw do
 
  post "/lists/new", to: "lists#create", as: :new_list
  get "/lists/:id", to: "lists#show", as: :list
  root "lists#index"
end
