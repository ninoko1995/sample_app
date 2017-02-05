Rails.application.routes.draw do
  get 'sessions/new'

  root "static_pages#home"
  get 'home'=>"static_pages#home"
  get 'help'=>"static_pages#help"
  get 'about'=>"static_pages#about"
  get 'contact'=>"static_pages#contact"
	
  get 'login', to:'sessions#new'
  post 'login', to:'sessions#create'
  delete 'logout',to:'sessions#destroy'

	get 'signup', to: 'users#new'
	post 'signup', to: 'users#create'
	resources :users,only:[:show]
end
