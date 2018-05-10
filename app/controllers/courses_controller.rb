class CoursesController < ApplicationController

  def rails_course
    @course_enquiry = CourseEnquiry.new
  end

  def python_course
    @course_enquiry = CourseEnquiry.new
  end

  def mysql_course
    @course_enquiry = CourseEnquiry.new
  end

  def angular_course
    @course_enquiry = CourseEnquiry.new
  end

  def php_course
    @course_enquiry = CourseEnquiry.new
  end

end
