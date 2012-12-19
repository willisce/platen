class EntryTypeDefinition < ActiveRecord::Base
  belongs_to :user
  belongs_to_multitenant :user
  
  belongs_to :entry_type
  belongs_to :field_type
  # attr_accessible :title, :body
end
