class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.text :data
      t.references :entry_type
      t.references :section
      t.references :user

      t.timestamps
    end
    add_index :entries, :entry_type_id
    add_index :entries, :section_id
    add_index :entries, :user_id
  end
end
