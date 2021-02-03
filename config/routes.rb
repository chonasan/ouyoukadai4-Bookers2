Rails.application.routes.draw do
 get 'home/about' => 'homes#about'
 root to: 'books#top'
 devise_for :users
 resources :users
 resources :books
end
