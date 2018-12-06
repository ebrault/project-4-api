# frozen_string_literal: true

class CollectionsController < ProtectedController
  before_action :set_collection, only: %i[show update destroy]
  def index
    @collection = current_user.collection
    render json: @collection
  end

  def show
    render json: @collection
  end

  def create
    @collection = current_user.build_collection(collection_params)
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
    @collection = current_user.collection.find(params[:id])
  end

  def collection_params
    params.require(:collection).permit(:collection_number)
  end
end
