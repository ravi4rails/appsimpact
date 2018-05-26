class ReviewsController < ApplicationController
  def create
    @user = current_user.id
    #@course = Course.find_by(params[:course_name])
    @review = Review.new(review_params)
      if @review.save
      flash[:notice] = 'Thankyou For Review...'
      redirect_to  root_path
    end  
  end

  private
    def review_params
      params.require(:review).permit(:name, :message, :user_id, :course_name)
    end

end
