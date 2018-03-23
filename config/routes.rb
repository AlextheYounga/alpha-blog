Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

root 'pages#home'  #This is the route for the homepage; using root makes the server immediately redirect to this page
get 'about', to: 'pages#about' #This is the about page
get 'readinglist', to: 'pages#readinglist'
get 'projects', to: 'pages#projects'
get 'playground', to: 'pages#playground'
get 'search_stocks', to: 'stocks#search'

resources :articles, except: [:signup] #this simple term resources allowed a:
#new-article path
#a post to create articles
#an edit article path 
#a patch to update articles 
#a show-articles path
#a delete article path
#and index article path

get 'signup', to: 'users#signup'
resources :users, except: [:signup] #creates all routes except signup route

get 'login', to: 'sessions#login'
post 'login', to: 'sessions#create'
delete 'logout', to: 'sessions#destroy'

resources :categories, except: [:destroy]

resources :posts, only: [:index]

































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
