Deface::Override.new(
  virtual_path: 'queries/_columns',
  name: 'add_search_to_each_select_in_columns',
  insert_bottom: '.query-columns',
  text: File.read(Rails.root.join('plugins', 'selectbox_autocompleter', 'app', 'views', 'queries', '_columns_search.html.erb'))
)