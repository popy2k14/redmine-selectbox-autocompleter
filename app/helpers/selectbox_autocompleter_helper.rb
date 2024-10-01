module SelectboxAutocompleterHelper

  def generate_target_list_for_js
    target_list =  Setting.plugin_selectbox_autocompleter['target_list']
    
    return "[]" if target_list.blank?
    
    joind_target = target_list.split("\n").map{ |line| "'#{j(line.chomp)}'" }.join(', ')
    generate_array = "[#{joind_target}]"
  end

  def generate_exceptions_list_for_js
    exceptions_list =  Setting.plugin_selectbox_autocompleter['exceptions_list']
    
    return "[]" if exceptions_list.blank?
    
    joind_target = exceptions_list.split("\n").map{ |line| "'#{j(line.chomp)}'" }.join(', ')
    generate_array = "[#{joind_target}]"
  end

  def is_autosearch
    return !!Setting.plugin_selectbox_autocompleter['autocomplete_autosearch']
  end

end
