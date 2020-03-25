class AddNamaToOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :end_user_id, :integer
    add_column :orders, :address, :string
    add_column :orders, :postal_code, :string
    add_column :orders, :name, :string
    add_column :orders, :purchase_date, :date
    add_column :orders, :tax, :integer
    add_column :orders, :payment_method, :integer,default: 0
    add_column :orders, :total, :integer
    add_column :orders, :postage, :integer
    add_column :orders, :status, :integer,default: 0
  end
end
