# config/routes.rb

Rails.application.routes.draw do
  root 'tests#index'
  post '/tests', to: 'tests#create'
end
