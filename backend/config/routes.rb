Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/notes", to: "notes#index"
  get "/notes/:note_id", to: "notes#show"
  post "/notes", to: "notes#create"
  delete "/notes/:note_id", to: "notes#destroy"
end
