class List < ActiveRecord::Base
	belongs_to :group
	has_many :options
end
