Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  get '/', :controller => 'status', :action => 'status'
  get '/status', :controller => 'status', :action => 'status'
end
