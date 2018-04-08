class CreateOperators < ActiveRecord::Migration[5.1]
  def change
    create_table :operators do |t|
      t.references :country, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
