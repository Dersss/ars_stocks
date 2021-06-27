class AddValueToPositions < ActiveRecord::Migration[6.1]
  def change
    add_column :positions, :value, :float
  end
end
