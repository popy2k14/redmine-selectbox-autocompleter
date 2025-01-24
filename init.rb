require 'redmine'
require_relative 'lib/selectbox_autocompleter/patches/application_helper_patch'

Redmine::Plugin.register :selectbox_autocompleter do
  name 'Selectbox Autocompleter plugin'
  author 'rk team'
  description 'This plugin generate Autocomplete box for Select box'
  version '1.4.0'
  url 'https://github.com/rkteam/redmine-selectbox-autocompleter'
  author_url 'https://github.com/rkteam'

  settings(:default => {
    'target_list' => [
        '#issue-form',
        '#kanban_form',
     ].join("\r\n"),
     'exceptions_list' => [].join("\r\n"),
     'autocomplete_type' => 'select2',
     'autocomplete_autosearch' => true,
  }, :partial => 'selectbox_autocompleter/settings')

  unless ApplicationHelper.included_modules.include?(SelectboxAutocompleter::Patches::ApplicationHelperPatch)
    ApplicationHelper.prepend(SelectboxAutocompleter::Patches::ApplicationHelperPatch)
  end

end

require_relative 'app/helpers/selectbox_autocompleter_helper'
ActionView::Base.send :include, SelectboxAutocompleterHelper

require_relative 'lib/selectbox_autocompleter/hooks'
