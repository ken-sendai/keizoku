class AddIntervalToProducts < ActiveRecord::Migration
  def change
    add_column :products, :interval, :text
  end
end
