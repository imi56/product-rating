class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name, index: true, null: false
      t.decimal :cost, null: false, precision: 11, scale: 2
    end
  end
end
