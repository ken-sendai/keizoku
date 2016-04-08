class ChangeStartToProducts < ActiveRecord::Migration
  def change
    change_column :products, :start, :text
  end
end
