class CreateSectionTypeDefinitions < ActiveRecord::Migration
  def change
    create_table :section_type_definitions do |t|
      t.references :section_type
      t.references :entry_type
      t.references :user

      t.timestamps
    end
    add_index :section_type_definitions, :section_type_id
    add_index :section_type_definitions, :entry_type_id
    add_index :section_type_definitions, :user_id
  end
end
