Rails.application.routes.draw do


	resources :houses

	root to: "houses#index"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
