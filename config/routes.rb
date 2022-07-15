Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'users#index'

  get 'posts/new', to: 'posts#new'
  get 'comments/new', to: 'comments#new'

  post 'posts/', to: 'posts#create'
  post 'comments/', to: 'comments#create'


  resources :users, only: [:index, :show] do
    resources :posts, only: [:index, :create, :new, :show]
  end

  resources :posts do
    resources :comments, only: [:create, :new]
    resources :likes, only: [:create]
  end
end
