class Contact < ApplicationRecord
  validates :name, :email_address, :subject, :message, presence:true
end
