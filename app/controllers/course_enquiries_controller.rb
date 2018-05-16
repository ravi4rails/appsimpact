class CourseEnquiriesController < ApplicationController
  
  def create
    @course_enquiry = CourseEnquiry.new(course_enquiry_params)
      if @course_enquiry.save
      flash[:notice] = 'Thankyou Your Details Submited Successfully...'
      redirect_to  request.referrer
    end  
  end

  private
    def course_enquiry_params
      params.require(:course_enquiry).permit(:name, :email, :contact, :course_name)
    end

end
