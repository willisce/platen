module PlatenSerializer
  @__a = false
  @__b = binding

  def build_form_code(field_types)
    out = ''
    field_types.each do |ft|
      line = '= ' + ft.data_type.control_code.sub('_field_name_', ':'+ft.name)
      line = line.sub('_label_', "'#{ft.label}'")
      out << line + "\n"
    end
    out
  end

  def build_form_template(entry_type)
    form_code = entry_type.form_code
    out = "%h1 New #{entry_type.name}\n"
    out << "= simple_form_for([@entry_type, @entry]) do |sf|\n"
    out << "\t= sf.association :section\n"
    out << "\t= sf.simple_fields_for @entry.data do |f|\n"
    form_lines = form_code.split("\n")
    form_lines.each do |line|
      out << "\t\t" << line << "\n"
    end
    out << "\t\t= f.button :submit, 'Save #{entry_type.name}'\n"
    out << "= link_to 'Back', entry_type_entries_path(@entry_type)\n"
  end

  def build_model_code(name, field_types)
    out = "class #{name.camelize}; include ActiveAttr::Model; "
    field_types.each do |ft|
      out += "attribute :#{ft.name}, :type => #{ft.data_type.ruby_type}; "
    end
    out += "end;"
  end

  def build_model_from_code(entry_type)
    name = entry_type.name
    model_code = entry_type.model_code
    eval model_code + "@__a = #{name.camelize}.new;", @__b
  end

  def get_model_name(entry)
    entry_data = entry.data
    entry_data.class.name.underscore.sub("/", "_")
  end
end