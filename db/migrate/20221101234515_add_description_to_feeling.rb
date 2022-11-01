class AddDescriptionToFeeling < ActiveRecord::Migration[7.0]
  def change
    add_column :feelings, :description, :string
  end
end
