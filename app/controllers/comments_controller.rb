# frozen_string_literal: true

class CommentsController < ProtectedController
  before_action :set_comment, only: %i[show update destroy]
  def index
    @comments = current_user.comments.all
    render json: @comments
  end

  def show
    render json: @comment
  end

  def create
    @comment = current_user.comments.build(comment_params)
    if @comment.save
      render json: @comment
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  def update
    if @comment.update(comment_params)
      render json: @comment
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @comment.destroy
  end

  private

  def set_comment
    @comment = current_user.comments.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:comment_body, :mix_id)
  end
end
