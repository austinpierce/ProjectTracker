Rails.application.routes.draw do
  
  devise_for :users
	root 'welcome#index'
	resources :project
	resources :feature

end
