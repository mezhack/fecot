class AddForeignKeysToGymsAndAthletes < ActiveRecord::Migration[7.2]
  def change
    add_foreign_key :athletes, :gyms, column: :gym_id unless foreign_key_exists?(:athletes, :gym_id)
    add_foreign_key :gyms, :athletes, column: :responsible_id unless foreign_key_exists?(:gyms, :responsible_id)
    add_foreign_key :athletes, :grades, column: :grade_id unless foreign_key_exists?(:athletes, :grade_id)
  end
end
