class CreateSiteTypeDefinitions < ActiveRecord::Migration
  def change
    create_table :site_type_definitions do |t|
      t.references :site_type
      t.references :section_type
      t.references :user

      t.timestamps
    end

    remove_column(:section_types, :site_type_id)
    add_index :site_type_definitions, :site_type_id
    add_index :site_type_definitions, :section_type_id
    add_index :site_type_definitions, :user_id
  end
end
