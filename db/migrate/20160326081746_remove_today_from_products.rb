class RemoveTodayFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :today, :time
  end
end
