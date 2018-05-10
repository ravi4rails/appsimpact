class CourseEnquiry < ApplicationRecord
  validates :name,:email,:contact, presence:true
end
