class HomeController < ApplicationController
  skip_before_action :verify_authenticity_token
  # before_action :authenticate_user!
  def index
  end

  def about_us
  end

  def create_contact
    @contact = Contact.new(contact_params)
    if @contact.save
    redirect_to root_path
    end
  end

  def subscribe
    @subscribe = Subscribe.new(subscribe_params)
    if @subscribe.save
    redirect_to root_path
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name,:email_address,:message, :subject)
  end

  def subscribe_params
    params.require(:subscribe).permit(:email)
  end
end
