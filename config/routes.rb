GlobomaxEmployee::Application.routes.draw do


  # Employees load data
  match 'employees/all_employees' => 'employees#all_employees', :as => :all_employees

  # Employees show grid
  match 'employees/show_employees_list_window' => 'employees#show_employees_list_window', :as => :show_employees_list_window

  # Employees show form to edit
  match 'employees/show_employees_add_window' => 'employees#show_employees_add_window', :as => :show_employees_add_window

  # Employees create with extjs form
  match 'employees/create' => 'employees#create', :as => :employees_create

  resources :abouts

  match 'start/index' => 'start#index'

  # map.connect "/start.js", :controller => "index", :action => "start", :format => "js"
  # map.connect "/js/:action.js", :controller => "js", :format => "js"

  resources :employees

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
  root :to => "start#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
