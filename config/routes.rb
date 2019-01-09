Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'admin#index'
  get 'hostellers', to: 'hosteller#index', as: 'hostellers'
  get 'hostellers/new', to: 'hosteller#new', as: 'new_hosteller'
  get 'hostellers/search', to: 'hosteller#get_all_hostellers', as: 'search_hostellers'
  get 'hosteller/get_all_hostellers', to: 'hosteller#get_all_hostellers'
  get 'hosteller/:id', to: 'hosteller#show'
  post 'hosteller/create', to: 'hosteller#create'
  get 'hosteller/:id/edit', to: 'hosteller#edit'
  patch 'hosteller/:id/update', to: 'hosteller#update'
  resources :hosteller

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
