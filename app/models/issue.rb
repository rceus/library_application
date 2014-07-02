class Issue < ActiveRecord::Base
	has_many :books
	has_many :members

	validates_inclusion_of :issue_date,
	:in => Date.civil(1900, 1, 1) .. Date.today,
	:message => "must be between January 1st, 1900 and today"

end
