class CreateAthletes < ActiveRecord::Migration[7.2]
  def change
    create_table :athletes do |t|
      t.timestamps
    end
  end
end
