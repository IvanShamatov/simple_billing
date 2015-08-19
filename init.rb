Redmine::Plugin.register :simple_billing do
  name 'Simple billing plugin'
  author 'Ivan Shamatov'
  description 'You may call it really dump billing plugin, which just allows you to bill your customers and generate report.'
  version '0.0.1'
  url 'https://github.com/IvanShamatov/simple_billing'
  author_url 'http://activesupport.pro'

  menu :project_menu, :billing, {controller: "bills", action: "index"}, caption: :billing_title, :param => :project_id

  project_module :simple_billing do 
    permission :view_billing, :billing => :index
  end

end
