module SimpleBilling
  class Hooks < Redmine::Hook::ViewListener

    render_on :view_issues_context_menu_start, 
              :partial => "issues/new_bill_context_menu" 


    render_on :helper_projects_settings_tabs,
              :partial => "settings/project_settings"
  end
end