class CreateSiteTypes < ActiveRecord::Migration
  def change
    create_table :site_types do |t|
      t.string :name
      t.references :user

      t.timestamps
    end
    add_index :site_types, :user_id
  end
end
