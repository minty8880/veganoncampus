class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name, null: false
      t.string :last_name
      t.string :email, null: false
      t.string :password_digest, null: false
      t.references :institution, index: true
      t.boolean :admin, default: false

      t.timestamps
    end
  end
end
