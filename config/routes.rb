# frozen_string_literal: true

Rails.application.routes.draw do
  mount GraphiQL::Rails::Engine, at: '/graphiql', graphql_path: '/graphql' if Rails.env.development?
  post '/graphql', to: 'graphql#execute'
  root 'home#home'
  get 'search', to: 'search#search', as: :search
  get 'record/:id', to: 'search#show', as: :record

  # API

  namespace :api do
    namespace :v1 do
      resources :cars
      get '/search', to: 'search#search', as: :search
    end
  end
end

# == Route Map
#
