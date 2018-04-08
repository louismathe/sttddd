class CreatePartnerships < ActiveRecord::Migration[5.1]
  def change
    create_table :partnerships do |t|
      t.references :university, foreign_key: true
      t.references :partner, foreign_key: true

      t.timestamps
    end
  end
  def change
    create_table :partnerships do |t|
      t.references :university, index: true, foreign_key: true
      t.references :partner, index: true
      t.boolean :confirmed

      t.timestamps null: false
    end
    add_foreign_key :partnerships, :universities, column: :partner_id
  end
end
