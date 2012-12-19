class CreateSectionViews < ActiveRecord::Migration
  def change
    create_table :section_views do |t|
      t.string :name
      t.text :view_code
      t.references :section_type
      t.references :user

      t.timestamps
    end
    add_index :section_views, :section_type_id
    add_index :section_views, :user_id
  end
end
