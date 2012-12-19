class CreateSectionTypes < ActiveRecord::Migration
  def change
    create_table :section_types do |t|
      t.string :name
      t.references :site_type
      t.references :user

      t.timestamps
    end
    add_index :section_types, :site_type_id
    add_index :section_types, :user_id
  end
end
