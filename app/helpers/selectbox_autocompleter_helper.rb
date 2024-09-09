module SelectboxAutocompleterHelper

  def generate_target_list_for_js
    target_list =  Setting.plugin_selectbox_autocompleter['target_list']
    
    return "[]" if target_list.blank?
    
    joind_target = target_list.split.map{ |line| "'#{j(line.chomp)}'" }.join(', ')
    "[#{joind_target}]"
  end

  def generate_exclude_target_list_for_js
    target_list =  Setting.plugin_selectbox_autocompleter['exclude_target_list']

    return "[]" if target_list.blank?

    exclude_list = target_list.split.map{ |line| "'#{j(line.chomp)}'" }.join(', ')
    "[#{exclude_list}]"
  end

  def generate_autocompleter_min_count_show_search
    Setting.plugin_selectbox_autocompleter['min_count_show_search']
  end

end
