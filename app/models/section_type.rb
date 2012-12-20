class SectionType < ActiveRecord::Base
  belongs_to :user
  belongs_to_multitenant :user
  
  has_many :site_type_definitions
  has_many :site_type, :through => :site_type_definitions
  has_many :sections
  has_many :section_type_definitions
  has_many :entry_types, :through => :section_type_definitions
  has_many :section_views
  attr_accessible :name
end
