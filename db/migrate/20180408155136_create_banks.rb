class CreateBanks < ActiveRecord::Migration[5.1]
  def change
    create_table :banks do |t|
      t.references :country, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
