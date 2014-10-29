Rails.application.routes.draw do
  resources :entries

  devise_for :users
  resources :categories
  get 'pages/index'
  get 'pages/info'
  root :to => redirect('pages/index')
end
