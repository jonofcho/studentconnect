Rails.application.routes.draw do
  root 'sessions#index'


  get '/organizations/register' => 'organizations#register'
  get '/edit' => 'profiles#edit'
  get '/users' => 'users#show'
  get '/users/update' => 'profiles#edit'
  get '/join' => 'sessions#join'
  get '/session' => 'sessions#new'
  get '/sessions/destroy' => 'sessions#destroy'
  resources :sessions
  resources :users
  resources :profiles
  resources :organizations

  post '/organization/update' => 'organization#update'
  post '/organization' => 'organizations#create'
  post '/profiles/update' => 'profiles#update'
  post '/register' => 'sessions#register'
  post 'sessions/new' => 'sessions#new'
  post 'sessions/create' => 'sessions#create'
  post 'sessions/register' => 'sessions#register'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
