# frozen_string_literal: true

class CollectionsController < ApplicationController
  before_action :set_collection, only: %i[show update destroy]
  def index
    @collections = Collection.all
    render json: @collections
  end

  def show
    render json: @collection
  end

  def create
    @collection = Collection.new(collection_params)
    if @collection.save
      render json: @collection, status: :created, location: @collection
    else
      render json: @collection.errors, status: :unprocessable_entity
    end
  end

  def update
    if @collection.update(collection_params)
      render json: @collection
    else
      render json: @collection.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @collection.destroy
  end

  private

  def set_collection
    @collection = Collection.find(params[:id])
  end

  def collection_params
    params.require(:collection).permit(:collection_number)
  end
end
