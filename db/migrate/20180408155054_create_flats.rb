class CreateFlats < ActiveRecord::Migration[5.1]
  def change
    create_table :flats do |t|
      t.references :city, foreign_key: true
      t.string :price

      t.timestamps
    end
  end
end
