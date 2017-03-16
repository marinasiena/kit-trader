class CreateKits < ActiveRecord::Migration[5.0]
  def change
    create_table :kits do |t|
      t.string :trans_type
      t.integer :price
      t.integer :zip_code
      t.string :league
      t.string :season
      t.string :comment
      t.references :user, index: true, foreign_key: {on_delete: :cascade}
      t.references :club, index: true, foreign_key: {on_delete: :cascade}

      t.timestamps
    end
  end
end
