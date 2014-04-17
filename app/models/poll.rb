class Poll < ActiveRecord::Base
	validates :name, :presence => true
	belongs_to :group
	has_many :votes
end
