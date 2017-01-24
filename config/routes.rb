Rails.application.routes.draw do
  resources :tags
  resources :indefinitions
  resources :variables
  resources :aventures

  resources :variables do
    resources :aventures, only: [:index]
  end
  resources :tags do
    resources :aventures, only: [:index]
  end

  root 'static_pages#home_page'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
