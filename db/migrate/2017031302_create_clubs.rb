class CreateClubs < ActiveRecord::Migration[5.0]
  def change
    create_table :clubs do |t|
      t.string :long_name
      t.string :short_name
      t.string :location
      t.string :image
      t.references :kits

      t.timestamps
    end
  end
end
