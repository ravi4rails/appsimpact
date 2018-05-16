class WorkshopRegistration < ApplicationRecord
  validates :name, :email, :contact, :collage_name, :branch, :year, presence:true
end
