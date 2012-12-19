class EntryType < ActiveRecord::Base
  belongs_to :user
  belongs_to_multitenant :user
  
  has_many :entries
  has_many :entry_type_definitions
  has_many :field_types, :through => :entry_type_definitions
  has_many :entry_views
  has_many :section_type_definitions
  has_many :section_types, :through => :section_type_definitions
  serialize :model, Class
  attr_accessible :form_code, :model, :name
end
