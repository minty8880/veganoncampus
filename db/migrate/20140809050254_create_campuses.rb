class CreateCampuses < ActiveRecord::Migration
  def change
    create_table :campuses do |t|
      t.string :name
      t.references :institution, index: true

      t.timestamps
    end
  end
end
