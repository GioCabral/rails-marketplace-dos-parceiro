class ChangePercentagetypeToInteger < ActiveRecord::Migration[7.0]
  def change
    change_column :feelings, :percentage, :integer
  end
end
