class CreateAthletes < ActiveRecord::Migration[7.2]
  def change
    create_table :athletes do |t|
      t.string :name, null: false
      t.string :cpf
      t.date :birthdate, null: false
      t.string :address, null: false
      t.integer :grade_id
      t.integer :gym_id

      t.timestamps
    end

    add_index :athletes, :cpf, unique: true, where: "cpf IS NOT NULL"
  end
end
