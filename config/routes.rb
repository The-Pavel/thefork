Rails.application.routes.draw do

  get 'restaurants', to: 'restaurants#index', as: :restaurants
  post 'restaurants', to: 'restaurants#create'
  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant
  get 'contact', to: 'pages#contact', as: :contact
  get 'about', to: 'pages#about', as: :about

  # SYNTAX
  # request_method 'path', to: "countroller_name#action_name", as: :internal_name_of_path
  # as: :route_name is optional but highly recommended

  # create a root path - now localhost:3000/ will go to pages controller, home action
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
