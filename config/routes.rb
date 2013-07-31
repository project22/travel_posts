TravelPosts::Application.routes.draw do



  resources :locations do
    resources :posts
  end
  
  resources :sessions, only: [:new, :create, :destroy]

  resources :users do
    # JP added this.  Add location uner user to help user location route for a specifice user
    #http://localhost:3000/users/1/locations
    #locations_controller for /locations has a conditional to look for a user id param
    # Now we want this to work
    # http://localhost:3000/users/1/locations/new
    # http://guides.rubyonrails.org/getting_started.html
    resources :locations
    # resources :posts 
  end
  get '/signup',  to: 'users#new'
  get '/login', to: 'sessions#new'
  delete '/signout', to: 'sessions#destroy'
  # get '/jp',  to: 'site#index'  WHY doesn't this work?
  root to: 'site#index'

  # added this route to the site controller.  In site controller I added a method called map.  That opens map.html.erb
  # 'site#map' means go to site controller, and execute the map method.
  get '/nate_map', to: 'site#map'

  end


  #get 'test/path' => 'site#index'

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

