# frozen_string_literal: true

Car.create!(YAML.load_file(Rails.root.join('db', 'seeds', 'cars.yml')))
Motorbike.create!(YAML.load_file(Rails.root.join('db', 'seeds', 'motos.yml')))
Helicopter.create!(YAML.load_file(Rails.root.join('db', 'seeds', 'helicopters.yml')))
Ship.create!(YAML.load_file(Rails.root.join('db', 'seeds', 'ships.yml')))
Plane.create!(YAML.load_file(Rails.root.join('db', 'seeds', 'planes.yml')))
