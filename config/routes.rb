Rails.application.routes.draw do
  root 'page_posts#index'

  resources :page_posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
