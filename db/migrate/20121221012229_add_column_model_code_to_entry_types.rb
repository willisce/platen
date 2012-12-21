class AddColumnModelCodeToEntryTypes < ActiveRecord::Migration
  def change
    add_column :entry_types, :model_code, :string
  end
end
