Rails.application.routes.draw do
  root :to => "blogs#index"

  devise_for :users, controllers: {
  	omniauth_callbacks: 'users/omniauth_callbacks',
  	registrations: 'users/registrations',
  	confirmations: 'confirmations'}

  	 devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :blogs

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
