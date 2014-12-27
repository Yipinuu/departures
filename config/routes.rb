Rails.application.routes.draw do

  get 'users/new' => "users#new", as: :new_user
  post 'users/new' => 'users#create', as: :create_user
  get 'users/:id' => "users#show", as: :show_user

  get '/in' => "sessions#new", as: :new_session
  post '/in' => "sessions#create", as: :create_session
  delete '/out' => "sessions#destroy", as: :destroy_session

  get 'specols/new' => "specols#new", as: :new_specol
  post 'specols/new' => "specols#create", as: :create_specol

  get 'articles/:id' => "articles#show", as: :show_article
  get ":specol_id/new" => "articles#new" , as: :new_article
  post ":specol_id/new" => "articles#create", as: :create_article

  get 'specols/:title/' => "specols#show", as: :show_specol

  get ':specol_id/backstage/new_spepage' => "spebackstages#new_spepage", as: :new_spepage
  post ':specol_id/backstage/new_spepage' => "spebackstages#create_spepage", as: :create_spepage
  get ':specol_id/backstage/new_speadmin' => "spebackstages#new_speadmin", as: :new_speadmin
  post ':specol_id/backstage/new_speadmin' => "spebackstages#create_speadmin", as: :create_speadmin
  get  ':specol_id/backstage/comment_message' => "spebackstages#comment_message" , as: :comment_message
  patch  ':specol_id/backstage/comment_message' => "spebackstages#create_comment_message" , as: :create_comment_message

  get ':specol_id/backstage' => "spebackstages#show", as: :show_spebackstage

  get ':specol_id/leave_messages' => "leavemessages#index", as: :leavemessages
  post ':specol_id/leave_messages' => "leavemessages#create", as: :create_leavemessage

  get 'experiments/user' => "experiments#show", as: :show_user_experiments
  get 'experiments/:specol_id/specols' => "experiments#show", as: :show_specols_experiments
  patch 'experiments/user' => "experiments#update", as: :update_user_experiments
  patch 'experiments/:specol_id/specols' => "experiments#update", as: :update_specols_experiments

  root 'specols#zanshi'


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
     resources :products

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
