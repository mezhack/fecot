class CreateGyms < ActiveRecord::Migration[7.2]
  def change
    create_table :gyms do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.decimal :latitude, precision: 10, scale: 6
      t.decimal :longitude, precision: 10, scale: 6
      t.integer :responsible_id

      t.timestamps
    end
  end
end
