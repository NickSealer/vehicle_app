# frozen_string_literal: true

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '*' # 'http://localhost:3000'
    resource '/api/v1/*', headers: 'ACCESS_KEY', methods: %i[get post patch put delete]
    resource '/graphql', headers: 'ACCESS_KEY', methods: :post
  end
end
