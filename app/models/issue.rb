class Issue < ActiveRecord::Base
	belongs_to :book
	belongs_to :member
	validates_presence_of :due_date, :issue_date
	validates_inclusion_of :issue_date,
	:in => Date.civil(1900, 1, 1) .. Date.today,
	:message => "must be between January 1st, 1900 and today"

end
