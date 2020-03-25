class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.integer :end_user_id
      t.string :address
      t.string :postal_code
      t.string :direction

      t.timestamps
    end
  end
end
