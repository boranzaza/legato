class CreateChatrooms < ActiveRecord::Migration[6.0]
  def change
    create_table :chatrooms do |t|
      t.references :customer, null: false, foreign_key: { to_table: 'users' }
      t.references :musician, null: false, foreign_key: { to_table: 'users' }
      t.timestamps
    end
  end
end
