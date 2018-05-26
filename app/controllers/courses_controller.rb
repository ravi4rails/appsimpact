class CoursesController < ApplicationController
  def index
   @courses = Course.all
  end

  def rails_course
    @course_enquiry = CourseEnquiry.new
    @review =Review.new
    @course = Course.find_by_course_name("Full Stack Web Development in Ruby on Rails")
    @user =  current_user.id
  end

  def python_course
    @course_enquiry = CourseEnquiry.new
    @review =Review.new
    @course = Course.find_by_course_name("Full Stack Web Development With Python Django")
    @user =  current_user.id
  end

  def mysql_course
    @course_enquiry = CourseEnquiry.new
    @review =Review.new
    @course = Course.find_by_course_name("Complete Foundation from Start to End MySQL")
    @user =  current_user.id
  end

  def angular_course
    @course_enquiry = CourseEnquiry.new
    @review =Review.new
    @course = Course.find_by_course_name("Complete Front End Development Using Angular5")
    @user =  current_user.id
  end

  def php_course
    @course_enquiry = CourseEnquiry.new
    @review =Review.new
    @course = Course.find_by_course_name("Web Development in PHP")
    @user =  current_user.id
  end

end
