Rails.application.routes.draw do

  # /users
  resources :users, except: [:new, :edit]

  resources :provinces, except: [:new, :edit] do
    resources :cities, only: [:create, :index]
  end

  resources :pushs, only: [:create, :index]

  resources :cities, only: [:show, :update, :destroy] do
    resources :advertisements, only: [:create, :index]
  end
  resources :advertisements,  only: [:show, :update, :destroy] do
    resources :images, only: [:create, :index]
  end

  get ':city_id/advertisements_by_categories/:category_id', to:'advertisements#by_category'

  resources :images, only: [:show, :update, :destroy]
  resources :categories, except: [:new, :edit]

  post '/login', to:'login#authenticate'
  delete '/logout', to:'login#destroy'
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
