class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :provider
      t.string :uid
      t.string :name
      t.string :oauth_token
      t.datetime :oauth_expires_at

      t.string :name
      t.string :email
      t.string :phone
      t.string :image
      t.references :kits

      t.timestamps
    end
  end
end
