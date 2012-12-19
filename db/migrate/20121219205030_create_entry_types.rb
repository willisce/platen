class CreateEntryTypes < ActiveRecord::Migration
  def change
    create_table :entry_types do |t|
      t.string :name
      t.text :model
      t.text :form_code
      t.references :user

      t.timestamps
    end
    add_index :entry_types, :user_id
  end
end
