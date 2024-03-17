# frozen_string_literal: true

Rails.application.routes.draw do
  root 'home#home'
  get 'search', to: 'results#results', as: :results
  get 'result/:id', to: 'results#result', as: :result
end

# == Route Map
#
