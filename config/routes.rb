Rails.application.routes.draw do
  get 'home/about'
  root to:'home#top'
  devise_for :users
  resources :books, only: [:new, :create, :index, :show, :destroy ,:edit]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:show,:edit,:update,:index]
  get'books/:id'=>'books#show',as:'show_books'
patch'books/:id'=>'books#update',as:'apdate_books'
delete'books/:id' =>'books#destroy',as:'destroy_books'
 end