# frozen_string_literal: true

Rails.application.routes.draw do
  root 'home#home'
  get 'search', to: 'results#results', as: :results
  get 'result/:id', to: 'results#result', as: :result

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
