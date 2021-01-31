Rails.application.routes.draw do
  devise_for :users
 root to: 'books#top'
 resources :post_comments, only: [:create, :destroy]
end
