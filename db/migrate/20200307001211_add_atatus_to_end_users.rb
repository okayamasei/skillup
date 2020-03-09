class AddAtatusToEndUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :end_users, :status, :boolean,default: false
  end
end
