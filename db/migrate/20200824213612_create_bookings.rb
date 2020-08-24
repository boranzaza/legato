class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.datetime :date_time
      t.boolean :status
      t.string :location
      t.string :comments
      t.references :customer, null: false, foreign_key: { to_table: 'users' }
      t.references :musician, null: false, foreign_key: { to_table: 'users' }
      t.timestamps
    end
  end
end
