# frozen_string_literal: true

class VotesController < ProtectedController
  before_action :set_vote, only: %i[show update destroy]
  def index
    @votes = current_user.votes.all
    render json: @votes
  end

  def show
    render json: @vote
  end

  def create
    @vote = current_user.votes.build(vote_params)
    if @vote.save
      render json: @vote
    else
      render json: @vote.errors, status: :unprocessable_entity
    end
  end

  def update
    if @vote.update(vote_params)
      render json: @vote
    else
      render json: @vote.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @vote.destroy
  end

  private

  def set_vote
    @vote = current_user.votes.find(params[:id])
  end

  def vote_params
    params.require(:vote).permit(:vote_count, :mix_id)
  end
end
