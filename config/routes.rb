Rails.application.routes.draw do
  root to: 'pages#index'

  # static pages
  get '/projects' => 'pages#projects', as: :projects
  get '/about' => 'pages#about', as: :about

  # login/logout stuff
  get '/rileyisawesome'

  # custom route names
  get '/makesomewords', to: 'posts#new', as: :write_post

  # CRUD resources
  resources :posts

end
