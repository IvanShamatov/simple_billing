require_dependency 'hooks'

Redmine::Plugin.register :simple_billing do
  name 'Simple billing plugin'
  author 'Ivan Shamatov'
  description 'You may call it really dump billing plugin, which just allows you to bill your customers and generate report.'
  version '0.0.1'
  url 'https://github.com/IvanShamatov/simple_billing'
  author_url 'http://activesupport.pro'

  menu :top_menu, :bills, 
      {controller: "bills", action: "index"}, 
      :caption => :label_billing, 
      :if => Proc.new {
        User.current.allowed_to?(:view_bills, nil, :global => true) ||
        User.current.admin?
      }

end
