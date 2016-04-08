class ChangeDatatypePeriodOfProducts < ActiveRecord::Migration
  def change
    change_column :products, :period, :text
  end
end
