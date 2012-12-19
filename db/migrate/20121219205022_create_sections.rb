class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :title
      t.references :site
      t.references :section_type
      t.references :parent_section
      t.references :user

      t.timestamps
    end
    add_index :sections, :site_id
    add_index :sections, :section_type_id
    add_index :sections, :parent_section_id
    add_index :sections, :user_id
  end
end
