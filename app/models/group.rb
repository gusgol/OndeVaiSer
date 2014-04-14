class Group < ActiveRecord::Base
	has_many :polls
	has_many :lists

end
