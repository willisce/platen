class SectionTypeDefinition < ActiveRecord::Base
  belongs_to :user
  belongs_to_multitenant :user
  
  belongs_to :section_type
  belongs_to :entry_type
  # attr_accessible :title, :body
end
