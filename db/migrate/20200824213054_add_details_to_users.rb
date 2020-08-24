class AddDetailsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :phone_number, :string
    add_column :users, :address, :string
    add_column :users, :is_musician, :boolean
    add_column :users, :photo, :string
    add_column :users, :video, :string
    add_column :users, :bio, :text
    add_column :users, :price, :integer
    add_column :users, :ensemble_type, :string
    add_column :users, :instruments, :string
    add_column :users, :facebook, :string
    add_column :users, :youtube, :string
    add_column :users, :website, :string
    add_column :users, :instagram, :string
    add_column :users, :repertoire_1, :string
    add_column :users, :repertoire_1_length, :integer
    add_column :users, :repertoire_2, :string
    add_column :users, :repertoire_2_length, :integer
  end
end
