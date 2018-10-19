Rails.application.routes.draw do
  namespace :api do
    get "/about" => 'about#index'
    post "about/" => 'about#create'
    get "/about/:id" => 'about#show'
    patch "/about/:id" => 'about#update'
    delete "/about/:id" => 'about#destroy'
  end  
end
