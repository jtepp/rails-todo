Rails.application.routes.draw do
 
  post "/new_list", to: "lists#create"
  root "lists#index"
end
