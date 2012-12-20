class Entry< ActiveRecord::Base
  belongs_to :user
  belongs_to_multitenant :user
  
  belongs_to :entry_type
  belongs_to :section
  serialize :data, Object
  attr_accessible :data
end
