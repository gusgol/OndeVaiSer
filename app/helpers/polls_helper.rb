# encoding: UTF-8 
module PollsHelper
	def getCurrentWinner(poll_id)
		votes = Vote.where(:poll_id => poll_id)
		if votes.any?
			checkTie(votes.group('name').count)
		else
			"Nenhum voto foi computado ate o momento"
		end
	end

	def checkTie(votes)
		rank = votes.sort_by {|_key, value| value}
		first_place = rank[rank.count-1]
		second_place = rank[rank.count-2]
		if first_place[1] == second_place[1]	
			"Duas ou mais opções estão empatadas"
		else
			"#{first_place[0]}"
		end
	end
end
