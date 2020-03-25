Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_for :admins, controllers: {
  sessions:      'admins/sessions',
  passwords:     'admins/passwords',
  registrations: 'admins/registrations'
}
devise_for :end_users, controllers: {
  sessions:      'end_users/sessions',
  passwords:     'end_users/passwords',
  registrations: 'end_users/registrations'
}

namespace :admin do
  resources :top
  resources :items
  resources :genres, :only => [:index,:edit,:create,:update]
  resources :end_users, :except => [:create]
  resources :orders, :only => [:index,:show,:update]
  root 'top#top'
end

  scope module: :public do
    
  	resources :items, :only => [:index,:show]
  	resources :end_users, :only => [:show,:edit,:update]
  	resources :cart_items
    resources :orders do
      collection do
        get :confirm
        get :done
      end
  	end
    resources :addresses, :except => [:show]
    root 'items#top'
  end
end
