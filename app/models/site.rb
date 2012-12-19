class Site < ActiveRecord::Base
  belongs_to :user
  belongs_to_multitenant :user
  
  belongs_to :site_type
  has_many :sections
  attr_accessible :title
end
