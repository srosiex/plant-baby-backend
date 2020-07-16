Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do 
    resources :users, only: [:create, :show]
  end

  get "api/login/status", to: "api/sessions#is_logged_in?"
  post "api/login", to: "api/sessions#create"
  delete "api/logout/:id", to: "api/sessions#destroy"

end
