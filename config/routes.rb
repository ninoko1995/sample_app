Rails.application.routes.draw do
	b='static_pages'
  root "#{b}/home"
  get "#{b}/help"
  get "#{b}/about"
  get "#{b}/contact"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
