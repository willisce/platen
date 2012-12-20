class SiteTypeDefinition < ActiveRecord::Base
  belongs_to :site_type
  belongs_to :section_type
  belongs_to :user
  belongs_to_multitenant :user
  # attr_accessible :title, :body
end
