class AddSlugToCampuses < ActiveRecord::Migration
  def change
    add_column :campuses, :slug, :string
    add_index :campuses, :slug, unique: true
  end
end
