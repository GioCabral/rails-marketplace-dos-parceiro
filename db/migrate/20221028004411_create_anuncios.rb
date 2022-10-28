class CreateAnuncios < ActiveRecord::Migration[7.0]
  def change
    create_table :anuncios do |t|
      t.string :title
      t.integer :percentage
      t.string :photo

      t.timestamps
    end
  end
end
