class EntryView < ActiveRecord::Base
  belongs_to :user
  belongs_to_multitenant :user
  
  belongs_to :entry_type
  has_many :section_view_definitions
  has_many :section_views, :through => :section_view_definitions
  attr_accessible :name, :view_code
end
