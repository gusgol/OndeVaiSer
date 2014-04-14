class Group < ActiveRecord::Base
	validates :name, :presence => true
	validates :name, :uniqueness => true
	
	has_many :polls, dependent: :destroy
	has_many :lists, dependent: :destroy

end
