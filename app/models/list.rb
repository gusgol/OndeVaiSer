class List < ActiveRecord::Base
	validates :name, :presence => true
	
	belongs_to :group
	has_many :options, dependent: :destroy
end
