# frozen_string_literal: true

class CreateCars < ActiveRecord::Migration[7.1]
  def change
    create_table :cars, id: :uuid do |t|
      t.string :slug
      t.string :brand
      t.string :model
      t.integer :year, default: 0
      t.string :color
      t.integer :transmission, default: 0
      t.integer :category, default: 0

      t.timestamps
    end

    add_index :cars, :slug, unique: true
    add_index :cars, :brand
    add_index :cars, :model
    add_index :cars, :year
    add_index :cars, :color
  end
end
