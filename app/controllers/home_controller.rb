class HomeController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :authenticate_user!
  def index

  end
  
  def create_contact
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to root_path
    end
  end

  def contact_params
    params.require(:contact).permit(:name,:email,:message, :subject)
  end
end
