class ChangePricecolumnToPercentagecolumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :feelings, :price, :percentage
  end
end
