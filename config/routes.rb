Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"

  ###########################
  ## Pages
  ###########################  get "about", to:"pages#about"
  get "home", to:"pages#home"

  ###########################
  ## Projects
  ###########################
  # get "projects", to:"projects#index"
  Rails.application.routes.draw do
    resources :projects, only: [:index, :show]
  end


  # If you want to use slugs instead of IDs (e.g. /projects/awesome-website),
  # let me know and I’ll show you how to implement that too.
end
