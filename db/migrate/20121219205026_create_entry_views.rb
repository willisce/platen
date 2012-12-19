class CreateEntryViews < ActiveRecord::Migration
  def change
    create_table :entry_views do |t|
      t.string :name
      t.text :view_code
      t.references :entry_type
      t.references :user

      t.timestamps
    end
    add_index :entry_views, :entry_type_id
    add_index :entry_views, :user_id
  end
end
