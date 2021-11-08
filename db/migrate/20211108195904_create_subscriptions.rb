class CreateSubscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :subscriptions do |t|
      t.string :title
      t.string :description
      t.integer :temperature
      t.integer :brew_time
      t.float :price
      t.integer :frequency
      t.integer :status
      t.string :tea_id
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
