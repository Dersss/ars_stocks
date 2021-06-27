class CreatePositions < ActiveRecord::Migration[6.1]
  def change
    create_table :positions do |t|
      t.string :symbol
      t.float :number_of_positions
      t.datetime :purchase_date
      t.float :price
      t.float :bought_price
      t.float :day_change
      t.float :minute_change

      t.timestamps
    end
  end
end
