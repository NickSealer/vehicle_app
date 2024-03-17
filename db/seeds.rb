# frozen_string_literal: true

Car.create!(YAML.load_file(Rails.root.join('db', 'seeds', 'cars.yml')))
