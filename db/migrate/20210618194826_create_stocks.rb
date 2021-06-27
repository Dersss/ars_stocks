class CreateStocks < ActiveRecord::Migration[6.1]
  def change
    create_table :stocks do |t|
      t.string :name
      t.string :symbol
      t.string :type
      t.float :price
      t.float :day_open
      t.float :day_close
      t.float :minute_open
      t.float :minute_close
      t.float :day_high
      t.float :day_low
      t.float :minute_high
      t.float :minute_low

      t.timestamps
    end
  end
end
