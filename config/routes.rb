Rails.application.routes.draw do
  # Index
  get "/toys", to: "toys#index"
  # Read
  get "/toys/:name", to: "toys#show"
  # Create
  post "/toys", to: "toys#create"
  # Update - want to update at a specific celebrity
  put "/toys/:name", to: "toys#update"
  #Delete - want to go to a toys specific URL to delete
  delete "/toys/:name", to: "toys#destroy"
end
