# frozen_string_literal: true

module Concerns
  module Authorization
    extend ActiveSupport::Concern

    included do
      def validate_access_key(headers)
        raise GraphQL::ExecutionError, 'Invalid access key.' unless access_key_valid?(headers['HTTP_ACCESS_KEY'])
      end

      def access_key_valid?(access_key)
        access_key == ENV.fetch('ACCESS_KEY')
      end
    end
  end
end
