Rails.application.routes.draw do
  get 'users/new'

  get 'provider/new'

	root 'users#new'
	get 'sign-up', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
