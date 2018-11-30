# frozen_string_literal: true

class DjSetsController < ApplicationController
  before_action :set_dj_set, only: %i[show update destroy]
  def index
    @dj_sets = DjSet.all
    render json: @dj_sets
  end

  def show
    render json: @dj_set
  end

  def create
    @dj_set = DjSet.new(dj_set_params)

    if @dj_set.save
      render json: @dj_set
    else
      render json: @dj_set.errors, status: :unprocessable_entity
    end
  end

  def update
    if @dj_set.update(dj_set_params)
      render json: @dj_set
    else
      render json: @dj_set.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @dj_set.destroy
  end

  private

  def set_dj_set
    @dj_set = DjSet.find(params[:id])
  end

  def dj_set_params
    params.require(:dj_set).permit(:dj, :title, :set_type, :genre, :date)
  end
end
