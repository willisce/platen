class AddRubyTypeToDataType < ActiveRecord::Migration
  def change
    add_column :data_types, :ruby_type, :string
  end
end
