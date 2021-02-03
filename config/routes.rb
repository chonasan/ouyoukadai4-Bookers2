Rails.application.routes.draw do
 
 root to: 'books#top'
 devise_for :users
 resources :post_comments, only: [:create, :destroy]
end
