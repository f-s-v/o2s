Rails.application.routes.draw do
  root to: 'showcase#index'

  namespace :store do
    resources :products
    mount EssentialSelling::Engine => "/"
  end
end
