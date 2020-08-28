class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.string :content
      t.references :customer, null: false, foreign_key: { to_table: 'users' }
      t.references :musician, null: false, foreign_key: { to_table: 'users' }
      t.timestamps
    end
  end
end
