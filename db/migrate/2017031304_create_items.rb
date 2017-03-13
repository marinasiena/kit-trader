class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :item_type
      t.string :color
      t.string :size
      t.integer :number
      t.boolean :personalize
      t.string :season
      t.string :condition
      t.string :comment
      t.references :user, index: true, foreign_key: {on_delete: :cascade}
      t.references :league, index: true, foreign_key: {on_delete: :cascade}
      t.references :club, index: true, foreign_key: {on_delete: :cascade}


      t.timestamps
    end
  end
end
