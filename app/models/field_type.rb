class FieldType < ActiveRecord::Base
  belongs_to :user
  belongs_to_multitenant :user
  
  belongs_to :data_type
  has_many :entry_type_definitions
  has_many :entry_types, :through => :entry_type_definitions
  attr_accessible :label, :name
end
