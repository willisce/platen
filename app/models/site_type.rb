class SiteType < ActiveRecord::Base
  belongs_to :user
  belongs_to_multitenant :user
  
  has_many :site_type_definitions
  has_many :section_types, :through => :site_type_definitions
  has_many :sites
  attr_accessible :name
end
