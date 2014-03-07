RailsExamples::Application.routes.draw do

  namespace :onecompany do
    resources :products
    resources :product_categories
    
    controller :front do
      get '/' => :index
    end
  end

  namespace :maintain do
    resources :customer_feedbacks
    resources :invite_articles
    #    resources :invite_users
    controller :invite_articles do
      get 'plan' => :plan
    end

    controller :invite do
      get '/' => :index
      get 'login' => :new
      post 'login' => :create
      delete 'logout' => :destory
    end
  end

  resources :articles


  resources :segments


  resources :provinces


  resources :posts
  resources :sub_categories
  resources :categories
  
  get "front/index"
  get "front/publish"
  get "front/admin"
  get "front/region"

  match '/:abbr' => 'front#region', :constraints => { :abbr => /[a-z]{2,5}/ }, :via => :get

  constraints(Subdomain) do
    match '/' => 'front#region'
  end

#  match '/:id' => 'categories#show', :constraints => { :id => /\d.+/ }, :via => :get
#  match '/:abbr' => 'users#show'

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'
  root :to => 'front#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
