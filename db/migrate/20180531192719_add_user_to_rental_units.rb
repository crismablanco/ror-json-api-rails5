class AddUserToRentalUnits < ActiveRecord::Migration[5.2]
  def change
    add_reference :rental_units, :user, foreign_key: true
  end
end
