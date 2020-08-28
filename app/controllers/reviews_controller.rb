class ReviewsController < ApplicationController
  def index
  end

  def new
    @musician = User.find(params[:user_id])
    @musician_id = @musician.id
    @customer_id = current_user.id
    @review = Review.new
  end

  def create
    @review = Review.new({
      customer_id: current_user.id,
      musician_id: params[:review][:musician_id],
      rating: params[:review][:rating],
      content: params[:review][:content]
    })
    if @review.save
      redirect_to musician_path(params[:review][:musician_id])
    else
      redirect_to new_user_review_path(params[:review][:musician_id])
    end
  end

  def destroy
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content, :customer_id, :musician_id)
  end

  def set_review
    @review = Review.find(params[:id])
  end
end
