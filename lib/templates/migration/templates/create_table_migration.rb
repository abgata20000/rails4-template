class <%= migration_class_name %> < ActiveRecord::Migration
  def change
    create_table :<%= table_name %> do |t|
      t.string  :name,              default: '',  null: false
<% attributes.each do |attribute| -%>
<% if attribute.password_digest? -%>
      t.string :password_digest<%= attribute.inject_options %>
<% else -%>
      t.<%= attribute.type %> :<%= attribute.name %><%= attribute.inject_options %>
<% end -%>
<% end -%>
<% if options[:timestamps] %>
      t.text     :comment
      t.boolean  :enabled,            default: true,  null: false
      t.integer  :sort,               default: 0,     null: false
      t.integer  :created_user,       default: 0,     null: false
      t.integer  :updated_user,       default: 0,     null: false

      t.timestamps
<% end -%>
    end
<% attributes_with_index.each do |attribute| -%>
    add_index :<%= table_name %>, :<%= attribute.index_name %><%= attribute.inject_index_options %>
<% end -%>
    add_index :<%= table_name %>, :name
<% if options[:timestamps] %>
    add_index :<%= table_name %>, :enabled
    add_index :<%= table_name %>, :sort
    add_index :<%= table_name %>, :created_user
    add_index :<%= table_name %>, :updated_user
    add_index :<%= table_name %>, :created_at
    add_index :<%= table_name %>, :updated_at
<% end -%>
  end
end
