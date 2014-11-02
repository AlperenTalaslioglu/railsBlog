Rails.application.routes.draw do
  resources :entries do
  	resources :comments
  end
  devise_for :users
  resources :categories
  get 'pages/index'
  get 'pages/info'
  root :to => redirect('pages/index')
  get 'rss' => "entries#feed"
end
