class SiteType < ActiveRecord::Base
  belongs_to :user
  belongs_to_multitenant :user
  
  has_many :section_types
  has_many :sites
  attr_accessible :name
end
