class CreateFieldTypes < ActiveRecord::Migration
  def change
    create_table :field_types do |t|
      t.string :name
      t.string :label
      t.references :data_type
      t.references :user

      t.timestamps
    end
    add_index :field_types, :data_type_id
    add_index :field_types, :user_id
  end
end
