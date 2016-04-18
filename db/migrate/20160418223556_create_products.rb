class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.text :name
      t.text :start
      t.date :finish
      t.text :period
      t.text :condition
      t.integer :user_id
      t.integer :count
      t.integer :interval
      t.timestamps
    end
  end
end
