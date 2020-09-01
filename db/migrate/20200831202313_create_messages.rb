class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.string :content
      t.references :customer, null: false, foreign_key: { to_table: 'users' }
      t.references :musician, null: false, foreign_key: { to_table: 'users' }
      t.references :chatroom, null: false, foreign_key: true
      t.timestamps
    end
  end
end
