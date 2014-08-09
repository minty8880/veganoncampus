class CreateCampus < ActiveRecord::Migration
  def change
    create_table :campus do |t|
      t.string :name
      t.references :institution, index: true

      t.timestamps
    end
  end
end
