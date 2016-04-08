class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.text :name
      t.text :period
      t.text :conditions
      t.integer :count
      t.time :start
      t.timestamps
    end
  end
end
