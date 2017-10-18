Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'main#index'

  scope '/espacio' do
    get '/', to: 'main#espacio', as: 'espacio'
    get '/products/(:category_type)/(:category_id)/(:category_name)', to: 'main#products_by_category', as: 'products_by_category'
    get '/set_background/(:category_type)/(:product_sku)', to: 'main#set_background', as: 'set_background'
    get '/carrito_add/(:product_sku)', to: 'main#carrito_add', as: 'carrito_add'
    post '/carrito_send', to: 'main#carrito_send', as: 'carito_send'
    post '/set_tienda', to: 'main#set_tienda', as: 'set_tienda'
    post '/impresion_send', to: 'main#impresion_send', as: 'impresion_send'
    post '/cubicador_send', to: 'main#cubicador_send', as: 'cubicador_send'
  end

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