class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :title
      t.references :site_type
      t.references :user

      t.timestamps
    end
    add_index :sites, :site_type_id
    add_index :sites, :user_id
  end
end
