GlobomaxEmployee::Application.routes.draw do

  #----------------------------------------------- ABOUT US -----------------------------------------------------------

  # SHOW ABOUT WINDOW - NO LOADING DATA
  match 'abouts/show_about_window' => 'abouts#show_about_window'

  #----------------------------------------------- ABOUT US -----------------------------------------------------------

  #----------------------------------------------- GLOBOMAX SYSTEMS ---------------------------------------------------

  # MODIFY SYSTEM - With form load
  match 'globomaxsystems/modify_system' => 'globomaxsystems#modify_system'
  match 'globomaxsystems/globomax_system_modify_window' => 'globomaxsystems#globomax_system_modify_window'

  # SHOW ALL - INDEX
  match 'globomaxsystems/globomax_system_list_window_data' => 'globomaxsystems#globomax_system_list_window_data'
  match 'globomaxsystems/globomax_system_list_window' => 'globomaxsystems#globomax_system_list_window'

  # ADD NEW SYSTEM
  match 'globomaxsystems/add_new_globomax_system_window' => 'globomaxsystems#add_new_globomax_system_window'
  match 'globomaxsystems/create_system' => 'globomaxsystems#create_system'

  # DELETE SYSTEM - Without window
  match 'globomaxsystems/delete_system' => 'globomaxsystems#delete_system'


  #----------------------------------------------- GLOBOMAX EMPLOYEES ---------------------------------------------------

    # Employees show grid
  match 'employees/show_employees_list_window' => 'employees#show_employees_list_window', :as => :show_employees_list_window

  # Employees show form to edit
  match 'employees/show_employees_add_window' => 'employees#show_employees_add_window', :as => :show_employees_add_window

  # Employees create with extjs form
  match 'employees/create' => 'employees#create', :as => :employees_create

  # Employees destroy on server side
  match 'employees/destroy' => 'employees#destroy', :as => :employees_destroy

  # Employee modify on server side
  match 'employees/modify' => 'employees#modify', :as => :employees_modify

  # Employee modify on server side
  match 'employees/show_employees_modify_window' => 'employees#show_employees_modify_window', :as => :show_employees_modify_window

  # Employees load data
  match 'employees/all_employees' => 'employees#all_employees', :as => :all_employees

  match 'start/index' => 'start#index'

  # map.connect "/start.js", :controller => "index", :action => "start", :format => "js"
  # map.connect "/js/:action.js", :controller => "js", :format => "js"



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
