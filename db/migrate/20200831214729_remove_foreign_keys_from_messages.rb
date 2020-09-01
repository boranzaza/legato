class RemoveForeignKeysFromMessages < ActiveRecord::Migration[6.0]
  def change
    remove_reference :messages, :customer, null: false, foreign_key: { to_table: 'users' }
    remove_reference :messages, :musician, null: false, foreign_key: { to_table: 'users' }
    add_reference :messages, :user, foreign_key: true
  end
end
