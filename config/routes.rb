Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get    "restaurants",                 to: "restaurants#index",  as: :restaurants
  get    "restaurants/new",             to: "restaurants#new",    as: :new_restaurant
  post   "restaurants",                 to: "restaurants#create"
  get    "restaurants/:id",             to: "restaurants#show",   as: :restaurant
  get    "restaurants/:id/reviews/new", to: "restaurants#new_review",   as: :new_review
  post   "restaurants/:id/reviews/new", to: "restaurants#create_review"
end
