class CreateCustomer < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :full_name
      t.string :email
      t.string :phone
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zip_code
    end
  end
end
