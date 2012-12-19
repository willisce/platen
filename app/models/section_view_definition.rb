class SectionViewDefinition < ActiveRecord::Base
  belongs_to :user
  belongs_to_multitenant :user
  
  belongs_to :section_view
  belongs_to :entry_view
  # attr_accessible :title, :body
end
