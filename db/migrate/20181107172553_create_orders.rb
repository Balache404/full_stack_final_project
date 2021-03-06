class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.datetime :date_placed
      t.float :total_price
      t.string :order_status

      t.timestamps
    end
  end
end
