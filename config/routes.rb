Rails.application.routes.draw do
 get 'home/about' => 'homes#about'
 root to: 'books#top'
 devise_for :users
 resources :users
 resources :books
 resource :favorites, only: [:create, :destroy]   
 resources :_comments, only: [:create, :destroy]
end
