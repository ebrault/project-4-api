# frozen_string_literal: true

class MixesController < ProtectedController
  before_action :set_mix, only: %i[show update destroy]
  def index
    @mixes = current_user.mixes.all
    render json: @mixes
  end

  def show
    render json: @mix
  end

  def create
    @mix = current_user.mixes.build(mix_params)
    if @mix.save
      render json: @mix
    else
      render json: @mix.errors, status: :unprocessable_entity
    end
  end

  def update
    if @mix.update(mix_params)
      render json: @mix
    else
      render json: @mix.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @mix.destroy
  end

  private

  def set_mix
    @mix = current_user.mixes.find(params[:id])
  end

  def mix_params
    params.require(:mix).permit(:dj, :title, :mix_type, :genre, :date)
  end
end
