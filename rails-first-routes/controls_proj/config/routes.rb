Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # resources :users
  # resources :users, only:[:create, :destroy] -- When you "Only" want to create the routes in the arr
  # resources :users, except:[:create, :destroy] -- When you  wnat to create everything "Except" routes in the arr


  #VERB, PATH,          CONTROLLER#ACTION,  PREFIX's
  get 'users/:id', to: 'users#index', as: 'users'
  post 'users/:id', to: 'users#create'
  get 'users/new', to: 'users#new', as: 'new_user'
  get 'users/:id/edit', to: 'users#edit', as: 'edit_user' 





  # Defines the root path route ("/")
  # root "articles#index"
end
