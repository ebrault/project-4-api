# frozen_string_literal: true

class CollectionsController < ProtectedController
  before_action :set_collection, only: %i[show update destroy]
  def index
    @collections = current_user.collections.all
    render json: @collections
  end

  def show
    render json: @collection
  end

  def create
    @collection = current_user.collections.build(collection_params)
    if @collection.save
      render json: @collection
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
    @collection = current_user.collections.find(params[:id])
  end

  def collection_params
    params.require(:collection).permit(:collection_number)
  end
end
