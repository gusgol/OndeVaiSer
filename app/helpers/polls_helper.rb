# encoding: UTF-8 
module PollsHelper
	def getCurrentWinner(poll_id)
		votes = Vote.where(:poll_id => poll_id)
		if votes.any?
			if votes.count > 1
				checkTie(votes.group('name').count)
			else
				votes.first.name 
			end
		else
			"Nenhum voto foi computado ate o momento"
		end
	end

	def checkTie(votes)
		rank = votes.sort_by {|_key, value| value}
		first_place = rank[rank.count-1]
		first_place_score = first_place[1]
		winners = Array.new
		rank.each do |i| 
			if i[1] == first_place_score
				winners.insert(winners.count,i[0])
			end
		end 
		if winners.count > 1
			winners_s = ""
			winners.each do |i|
				winners_s = winners_s + i + ", "
			end
			winners_s = winners_s[0, winners_s.length-2]
			"Empate entre #{winners_s}"
		else
			winners.first
		end
	end

end
