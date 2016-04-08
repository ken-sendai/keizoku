class AddStartToProducts < ActiveRecord::Migration
  def change
    add_column :products, :start, :date
    add_column :products, :period, :integer
  end
end
