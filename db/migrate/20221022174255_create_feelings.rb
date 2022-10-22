class CreateFeelings < ActiveRecord::Migration[7.0]
  def change
    create_table :feelings do |t|
      t.string :name
      t.float :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end