class CreateEntryTypeDefinitions < ActiveRecord::Migration
  def change
    create_table :entry_type_definitions do |t|
      t.references :entry_type
      t.references :field_type
      t.references :user

      t.timestamps
    end
    add_index :entry_type_definitions, :entry_type_id
    add_index :entry_type_definitions, :field_type_id
    add_index :entry_type_definitions, :user_id
  end
end
