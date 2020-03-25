class AddUserToEndUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :end_users, :last_name, :string
    add_column :end_users, :first_name, :string
    add_column :end_users, :last_name_kana, :string
    add_column :end_users, :first_name_kana, :string
    add_column :end_users, :now_address, :string
    add_column :end_users, :now_postal_code, :string
    add_column :end_users, :phone_number, :string
  end
end
