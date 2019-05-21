class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :customer, foreign_key: true
      t.integer :status
      t.float :total_cost

      t.timestamps
    end
  end
end
