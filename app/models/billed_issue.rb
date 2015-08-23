class BilledIssue < ActiveRecord::Base
  unloadable

  belongs_to :issue
  belongs_to :bill
end
