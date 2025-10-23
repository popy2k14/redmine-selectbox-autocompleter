# Redmine Selectbox Autocompleter Plugin

This plugin generates autocomplete box for select box.
For example, it is useful for assisting input of a select box containing many option elements.

![ss_author_select2](/docs/ss_author_select2.png?raw=true)


## Installation

```
$ cd $(REDMINE_HOME)/plugin
$ git clone https://github.com/heriet/redmine-selectbox-autocompleter.git selectbox_autocompleter
```

and restart your redmine.

## Configuration

![configure_default](/docs/configure_default.png?raw=true)

You can configure target (html id attiribute) for convert selectbox to autocomplete box.

Default target list are below.

```
issue_assigned_to_id
values_assigned_to_id_1
values_author_id_1
wiki_page_parent_id
project_quick_jump_box
```

### Select2 mode

Convert select box using [Select2](https://select2.github.io/).

![ss_jump_select2](/docs/ss_jump_select2.png?raw=true)

### Datalist mode

Insert input box with datalist.

![ss_jump_datalist](/docs/ss_jump_datalist.png?raw=true)

### jQuery mode

Insert input box with jQuery.  
This is useful for IE and Edge because jQuery list is a partial match; the list by the autocomplete attribute is a forward match in IE and Edge.

![ss_jump_jquery](/docs/ss_jump_jquery.png?raw=true)

### Theming
To add theming add this at the top of your public/themes/[theme-name]/stylesheets/application.css:

```
@import url(../../../plugin_assets/selectbox_autocompleter/stylesheets/selectbox_autocompleter.css);    
```

Edit the plugin theming file public/plugin_assets/selectbox_autocompleter/stylesheets/selectbox_autocompleter.css to your liking.
Ex. add:

```
.select2-container--default .select2-selection--single .select2-selection__rendered {
  line-height: 21px !important;
  font-size: 14px !important;
}    
    
.select2-container--default .select2-results__option--highlighted[aria-selected] {
  background-color: #1867D2 !important;
  color: #FFFFFF !important;
}  

