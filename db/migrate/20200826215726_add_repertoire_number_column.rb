class AddRepertoireNumberColumn < ActiveRecord::Migration[6.0]
  def change
    add_column(:bookings, :repertoire_number, :integer)
  end
end
