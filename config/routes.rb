Rails.application.routes.draw do
  resources :books
   namespace :api do
    namespace :v1 do
      resources :users
      resources :bookcases
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
