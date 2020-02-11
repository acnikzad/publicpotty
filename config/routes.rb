Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  namespace :api do
    get "/bathrooms" => "bathrooms#index"
    get "/bathrooms/:id" => "bathrooms#show"
    post "/bathrooms" => "bathrooms#create"
    patch "/bathrooms/:id" => "bathrooms#update"
    delete "/bathrooms/:id" => "bathrooms#destroy"
    get "/bathrooms/rooms" => "bathrooms#bathrooms"

    get "/reviews" => "reviews#index"
    get "/reviews/:id" => "reviews#show"
    post "/reviews" => "reviews#create"
    patch "/reviews/:id" => "reviews#update"
    delete "/reviews/:id" => "reviews#destroy"
  end
end


