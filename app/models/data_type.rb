class DataType < ActiveRecord::Base
  belongs_to :user
  belongs_to_multitenant :user
  
  has_many :field_types
  attr_accessible :control_code, :name
end
