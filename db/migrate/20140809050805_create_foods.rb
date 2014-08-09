class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.text :description
      t.references :outlet, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
