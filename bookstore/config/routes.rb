Rails.application.routes.draw do
  root to: 'pages#index'

  get 'pages/authors'

  get 'pages/books'

  get 'pages/author_books'

  get 'pages/stores'

  get 'pages/stores_view'

  post 'pages/storesearch'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
