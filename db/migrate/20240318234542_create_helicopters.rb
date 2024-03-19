class CreateHelicopters < ActiveRecord::Migration[7.1]
  def change
    create_table :helicopters, id: :uuid do |t|
      t.string :slug
      t.string :brand
      t.string :model
      t.integer :year, default: 0
      t.string :color
      t.integer :transmission, default: 0
      t.integer :category, default: 0

      t.timestamps
    end

    add_index :helicopters, :slug, unique: :true
  end
end
