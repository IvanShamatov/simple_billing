

module SimpleBilling
  class Hooks < Redmine::Hook::ViewListener

    render_on :view_issues_context_menu_start, 
              :partial => "issues/new_bill_context_menu" 
  end
end