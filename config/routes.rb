	Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  resources :tags, only: [:index, :show]
  resources :indefinitions, only: [:index, :show]
  resources :variables, only: [:index, :show]
  resources :aventures, only: [:index, :show]
  resources :countries, only: [:index, :show]

	root 'static_pages#home_page'

  resources :variables do
    resources :aventures, only: [:index]
  end
  resources :tags do
    resources :aventures, only: [:index]
  end


	devise_for :users, :controllers => { registrations: 'registrations' }
	as :user do
  	get 'signin', to: 'devise/sessions#new', as: :signin
  	get 'signup', to: 'devise/registrations#new', as: :signup
  	delete 'signout', to: 'devise/sessions#destroy', as: :signout
	end

  # Rotue for elastic search
	get 'search', to: 'search#search', as: :search


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
