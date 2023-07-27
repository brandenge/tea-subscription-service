Rails.application.routes.draw do
  root to: 'application#welcome'

  namespace :api do
    namespace :v0 do
      get '/subscriptions', to: 'subscription#index'
      post '/subscriptions', to: 'subscirption#create'
      delete '/subscriptions/:id', to: 'subscirption#destroy'
    end
  end
end
