Rails.application.routes.draw do
  root to: 'application#welcome'

  namespace :api do
    namespace :v0 do
      get '/subscriptions', to: 'subscription#index'
      post '/subscriptions', to: 'subscription#create'
      delete '/subscriptions/:id', to: 'subscription#destroy'
    end
  end
end
