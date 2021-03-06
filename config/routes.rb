Rails.application.routes.draw do
  resources :poems
  namespace :api do
      namespace :v1 do
        resources :users
        resources :moments
        resources :feelings
        resources :entries
        resources :saved_entries
        resources :poems

        post '/signup', :to => 'users#create'
        post '/login', :to => 'auth#create'
        get '/home', :to => 'users#profile'
        get '/users/:id/moments', to: 'users#moments'
        get '/users/:id/entries', to: 'users#entries'
      end
    end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
