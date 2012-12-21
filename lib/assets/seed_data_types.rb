params = {
  :name => 'string',
  :ruby_type => 'String',
  :control_code => <<-eos
    f.input _field_name_, :label => _label_
  eos
}
param_array << params

params = {
  :name => 'boolean',
  :ruby_type => 'Boolean',
  :control_code => <<-eos
    f.input _field_name_, :inline_label => _label_, :as => :boolean
  eos
}
param_array << params

params = {
  :name => 'text',
  :ruby_type => 'String',
  :control_code => <<-eos
    f.input _field_name_, :label => _label_, :as => :text
  eos
}
param_array << params

params = {
  :name => 'file',
  :ruby_type => 'String',
  :control_code => <<-eos
    f.input _field_name_, :label => _label_, :as => :file
  eos
}
param_array << params


params = {
  :name => 'integer',
  :ruby_type => 'Integer',
  :control_code => <<-eos
    f.input _field_name_, :label => _label_, :as => :integer
  eos
}
param_array << params

params = {
  :name => 'decimal',
  :ruby_type => 'Float',
  :control_code => <<-eos
    f.input _field_name_, :label => _label_, :as => :decimal
  eos
}
param_array << params

params = {
  :name => 'datetime',
  :ruby_type => 'DateTime',
  :control_code => <<-eos
    f.input _field_name_, :label => _label_, :as => :datetime
  eos
}
param_array << params

param_array.each do |p|
  data_type = DataType.new(p)
  data_type.user_id = usr.id
  data_type.save
end