class AddCellToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :cell, :integer
  end
end
