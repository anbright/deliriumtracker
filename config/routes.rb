Rails.application.routes.draw do
	root 'sessions#new'
	get '/sign-up', to: 'users#new'
	post '/sign-up', to: 'users#create'
	get '/login', to: 'sessions#new'
	post '/login', to: 'sessions#create'
	delete '/logout', to: 'sessions#destroy'
	
	get '/help', to: 'users#help'
	get '/data', to: 'accelerometer#index'
	get '/api', to: 'accelerometer#api', defaults: { format: 'json' }
	post '/api', to: 'accelerometer#add_to_api'
	get '/users/:id/add/:patient_id', to: 'users#add_patient'
	get '/users/:id/remove/:patient_id', to: 'users#remove_patient'
	
	get '/patients/:id', to: 'patients#show'
	
  resources :users

end
