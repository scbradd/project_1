Rails.application.routes.draw do
  root :to => 'pages#home'
  resources :users, :only => [:new, :create, :index]
  resources :wines, :only => [:new, :create, :index]

  get '/login' => 'session#new' #login form
  post '/login' => 'session#create' #perform a log in
  delete '/login' => 'session#destroy' #log out
end
