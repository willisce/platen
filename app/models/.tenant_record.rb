class TenantRecord < ActiveRecord::Base
  self.abstract_class = true
  belongs_to :user
  belongs_to_multitenant :user
end