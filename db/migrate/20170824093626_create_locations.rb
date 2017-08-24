class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :city
      t.string :dist
      t.string :state
      t.string :postalcode
      t.text :about

      t.timestamps
    end
  end
end
