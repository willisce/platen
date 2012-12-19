class CreateSectionViewDefinitions < ActiveRecord::Migration
  def change
    create_table :section_view_definitions do |t|
      t.references :section_view
      t.references :entry_view
      t.references :user

      t.timestamps
    end
    add_index :section_view_definitions, :section_view_id
    add_index :section_view_definitions, :entry_view_id
    add_index :section_view_definitions, :user_id
  end
end
