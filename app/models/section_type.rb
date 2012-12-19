class SectionType < ActiveRecord::Base
  belongs_to :user
  belongs_to_multitenant :user
  
  belongs_to :site_type
  has_many :sections
  has_many :section_type_definitions
  has_many :entry_types, :through => :section_type_definitions
  has_many :section_views
  attr_accessible :name
end
