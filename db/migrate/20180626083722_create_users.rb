class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.string :provider
      t.string :uid
      t.string :remember_token
      t.datetime :remember_created_at

      t.timestamps
    end
  end
end
