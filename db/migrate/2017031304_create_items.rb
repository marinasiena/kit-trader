class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :item_type
      t.string :size
      t.integer :number
      t.string :color
      t.string :condition
      t.references :kit, index: true, foreign_key: {on_delete: :cascade}

      t.timestamps
    end
  end
end
