class Course < ApplicationRecord
 ratyrate_rateable "rating"
 has_many :reviews, :dependent => :destroy
 belongs_to :user
end
