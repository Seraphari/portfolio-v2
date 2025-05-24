Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"

  # pages
  get "about", to:"pages#about"
  get "home", to:"pages#home"

  # projects
  get "projects", to:"projects#index"
end
