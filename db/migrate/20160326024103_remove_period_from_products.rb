class RemovePeriodFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :period, :text
    remove_column :products, :start, :time
  end
end
