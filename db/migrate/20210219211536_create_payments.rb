class CreatePayments < ActiveRecord::Migration[6.1]
  def change
    create_table :payments do |t|
      t.string :product
      t.integer :quantity, default: 1
      
      t.decimal :amount, default: 0.0

      t.string :status

      t.timestamps
    end
  end
end
