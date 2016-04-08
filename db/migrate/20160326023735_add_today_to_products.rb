class AddTodayToProducts < ActiveRecord::Migration
  def change
    add_column :products, :today, :date
    add_column :products, :finish, :date
  end
end
