# encoding: UTF-8 
class VotesController < ApplicationController
	def create
		request_ip = request.remote_ip
		poll_id = params[:poll_id]
		votes = Vote.where(:poll_id => poll_id, :ip_address => request_ip)
		if votes.any?
			redirect_to poll_path(params[:poll_id]), notice: 'Você já votou, seu Zé Ruela!'
		else
			@vote = Vote.new
			@vote.name = params[:vote_name]
			@vote.poll_id = poll_id
			@vote.ip_address = request.remote_ip
			if @vote.save
				redirect_to poll_path(params[:poll_id])
			else
				redirect_to search_path
			end
		end
	end
end
