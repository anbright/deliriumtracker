Rails.application.routes.draw do
	root 'sessions#new'
	get '/sign-up', to: 'users#new'
	post '/sign-up', to: 'users#create'
	get '/login', to: 'sessions#new'
	post '/login', to: 'sessions#create'
	delete '/logout', to: 'sessions#destroy'
	
	get '/help', to: 'users#help'
	
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
