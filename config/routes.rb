Perfumeria::Application.routes.draw do
  controller :contacto do
    get 'contacto' => :new
    post 'contacto' => :create
  end

  # get "contacto/new"
  get "contacto/create"
  get 'admin' => 'admin#index'
  controller :sessions do
    get  'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end
  get "sessions/create"
  get "sessions/destroy"


  resources :users

  resources :mililitros

  resources :sexo

  resources :marcas

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'perfumes#inicio'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
  get 'perfumes/ver/:id' => 'perfumes#my_show', as: 'my_show'

  resources :perfumes do
    collection do
      get :masculinos, :femeninos, :inicio, :acerca_de
    end
  end

  get 'perfumes/masculinos/lineas/:id' => 'marcas#linea_masculina', as: 'masculino'
  get 'perfumes/femeninos/lineas/:id' => 'marcas#linea_femenina', as: 'femenino'

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
