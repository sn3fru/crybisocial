Socialbeam::Application.routes.draw do

  resources :scribbles
  resources :users
  resources :sessions
  root :to => 'browse#home'
  get  "refresh"  => "browse#refreshscribbles", :as => "refresh"
  get "votedup"  => "browse#votedup", :as => "votedup"
  get  "voteddown"  => "browse#voteddown", :as => "voteddown"
  
  #Sessions Users
  get "logout_user" => "sessions#destroy", :as => "logout_user"
  post "login_user" => "sessions#new", :as => "login_user"
 
 #Users
  get "signup" => "users#new", :as => "signup"

end
