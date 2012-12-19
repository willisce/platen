class Section < ActiveRecord::Base
  belongs_to :user
  belongs_to_multitenant :user
  
  belongs_to :site
  belongs_to :section_type
  has_many :entries

  has_many :child_sections, :class_name => "Section",
    :foreign_key => "parent_section_id"
  belongs_to :parent_section, :class_name => "Section"

  attr_accessible :title
end
