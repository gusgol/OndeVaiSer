module VotesHelper
	def getVotesCount(name, poll)
		votes = Vote.where(:name => name, :poll_id => poll)
		votes.count
	end 
end
