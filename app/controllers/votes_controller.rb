class VotesController < ApplicationController
	def create
		@vote = Vote.new
		@vote.name = params[:vote_name]
		@vote.poll_id = params[:poll_id]
		if @vote.save
			redirect_to poll_path(params[:poll_id])
		else
			redirect_to search_path
		end
	end
end
