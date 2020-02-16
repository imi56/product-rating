class CreateOrderProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :order_products do |t|
      t.belongs_to :order, null: false, foreign_key: true
      t.belongs_to :product, null: false, foreign_key: true
      t.decimal :cost, null: false, precision: 11, scale: 2
      t.integer :rating, inclusion: 1..5

      t.timestamps
    end
  end
end
