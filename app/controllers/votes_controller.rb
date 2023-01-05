class VotesController < ApplicationController
  def create
    @vote = Vote.new(poll_id: params[:poll_id], poll_answer_id: params[:poll_answer_id])

    respond_to do |format|
      if @vote.save
        format.html { redirect_to polls_path, notice: 'Vote was successfully created.' }
        format.json { render :show, status: :created, location: @vote }
      else
        format.html { render :new }
        format.json { render json: @vote.errors, status: :unprocessable_entity }
      end
    end
  end
end
