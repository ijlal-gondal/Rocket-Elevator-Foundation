class PagesController < ApplicationController

  require 'send_grid_mailer/custom_send_api'


  before_action :authenticate_user!, only: [:dashboard]

  after_action :sendEmail, :function_send_ticket, only: [:create]


  # def intervention
  #   @intervention = Intervention.new
  # #   # @client = Customer.all
  # #   # @address = Address.all
  # #   # @elevator = Elevator.all
 
  # end

  def index
  end


  def create

    file_attachment = params[:attached_file]
      if file_attachment 
        file_attachment = file_attachment.read
      else
        file_attachment = ""
      end
        @lead = Lead.create(
          full_name: params[:contact_full_Name],
          business_name: params[:contact_business_name],
          email: params[:contact_email],
          phone: params[:contact_phone],
          project_name: params[:contact_project_name],
          project_description: params[:contact_project_description],
          department: params[:contact_department],
          message: params[:contact_message],
          file_attachment: file_attachment,
          file_name:  params[:attached_file].original_filename
        )
    redirect_to "/index"
  end


# def sendEmail

#   sendgrid = SendGridApi::CustomSendGrid.new
#   subject = "Leads create"
#   to = Lead.last.email
#   message = "<html><body>  Greeting, <strong> #{Lead.last.full_name} </strong>. <br>
#   We thank you for contacting Rocket Elevators to discuss the opportunity to contribute to your project <em> #{Lead.last.project_name} </em>. <br>
#   A representative from our team will be in touch with you very soon. We look forward to demonstrate the value of our solutions and help you choose the appropriate product given your requirements. <br>
#   We’ll Talk soon, <br>
#   The Rocket Team <br>
#   </body></html>"
#   sendgrid.basic_mail(subject, to, message)

# end



def home
   
end
    # def admin
    #   @all_Quotes = Quote.all

    # if @current_user.try(:title) != "employee"
    #   flash[:error] = "ACCES DENIED"
    #   return redirect_to request.referrer || "/home"
    # end
  #   @users = User.all
  # end

    def dashboard
      @all_Quotes = Quote.all

    end

end


