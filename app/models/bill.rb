class Bill < ActiveRecord::Base
  unloadable

  has_many :billed_issues
  has_many :issues, through: :billed_issues
end
