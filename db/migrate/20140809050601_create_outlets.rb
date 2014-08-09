class CreateOutlets < ActiveRecord::Migration
  def change
    create_table :outlets do |t|
      t.string :name
      t.text :description
      t.string :website
      t.string :location
      t.references :campus, index: true

      t.timestamps
    end
  end
end
