class ResultsController < ApplicationController
  def index
    @poll = Poll.find(params[:poll_id])
  end
end
