class CourseEnquiriesController < ApplicationController
  
  def create
    @course_enquiry = CourseEnquiry.new(course_enquiry_params)
    respond_to do |format|
      if @course_enquiry.save
        format.html { redirect_to request.referrer, notice: 'Thankyou Your Details Submited Successfully...' }
      else
        format.html { redirect_to request.referrer }
      end
    end  
  end

  private
    def course_enquiry_params
      params.require(:course_enquiry).permit(:name, :email, :contact, :course_name)
    end

end
