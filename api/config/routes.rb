Rails.application.routes.draw do
  # post "/graphql", to: "graphql#execute"
  get "/notes", to: "notes#get_notes"
  get "/note/:id", to: "notes#get_note"
  post "/notes", to: "notes#create_note"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
