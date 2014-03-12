class CreateWorkOrders < ActiveRecord::Migration
  def change
    create_table :work_orders do |t|
      t.string :name
      t.datetime :date_started
      t.datetime :date_complete
      t.decimal :price
      t.integer :workable_id
      t.string :workable_type

      t.timestamps
    end
  end
end
