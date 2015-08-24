class Bill < ActiveRecord::Base
  unloadable


  belongs_to :project
  has_many :billed_issues
  has_many :issues, through: :billed_issues

  accepts_nested_attributes_for :billed_issues
end