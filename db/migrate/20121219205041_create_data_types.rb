class CreateDataTypes < ActiveRecord::Migration
  def change
    create_table :data_types do |t|
      t.string :name
      t.text :control_code
      t.references :user

      t.timestamps
    end
    add_index :data_types, :user_id
  end
end
