class ChangeTotalPriceToInterger < ActiveRecord::Migration[7.0]
  def change
    change_column :orders, :total_price, :integer
  end
end
