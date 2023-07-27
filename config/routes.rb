Rails.application.routes.draw do
  root to: 'application#welcome'

  namespace :api do
    namespace :v0 do
      get '/subscriptions', to: 'subscriptions#index'
      post '/subscriptions', to: 'subscirptions#create'
      delete '/subscriptions/:id', to: 'subscirptions#destroy'
    end
  end
end
