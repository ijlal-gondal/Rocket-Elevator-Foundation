class InterventionsController < ApplicationController
    skip_forgery_protection
    after_action :function_send_ticket, only: [:create]
def index
    @interventions = Intervention.all
    @buildings = Building.All
    # @address = Address.all
    # @elevator = Elevator.all    
end

    # GET /interventions/1
    # GET /interventions/1.json

def intervention_params
    params.fetch(:intervention, {}).permit(:id, :Author, :CustomerID, :BuildingID, :BatteryID, :ColumnID, :ElevatorID, :EmployeeID, :started_at, :ended_at, :Result, :Report, :Status)
    # params.permit(:author_id, :customer_id, :building_id, :battery_id, :column_id, :elevator_id, :employeeID, :start_date, :end_date, :result, :report, :status)
end
 

    # GET /interventions/new
def new
    puts ("------------------------New--------------")
    puts  intervention_params
    @intervention = Intervention.new(intervention_params)
    @customer = Customer.all
    @address = Address.all
    @buildings = Building.all
end


    # POST /interventions
    # POST /interventions.json
    def submission
    end
def create
    @intervention = Intervention.new(intervention_params)
    puts ("intervention parameters: ")
    puts  intervention_params
    pp @intervention
    respond_to do |format|
      if @intervention.save
        p ("+++++++++++++++++ Save OK +++++++++++++++++")
        puts ("intervention parameters: ")
        # puts  intervention_params
        format.html { redirect_to "/interventions", notice: 'Intervention was successfully created.' }
        format.json { render :show, status: :created, location: @intervention }
      else
        pp @intervention
        p ("$$$$$$$$$$$$ not saved - from controller $$$$$$$$$$$$$$$")
        format.html { render :new }
        format.json { render json: @intervention.errors, status: :unprocessable_entity }
      end
    end

 end 

 def function_send_ticket
    @client = ZendeskAPI::Client.new do |config|
      config.url = "https://mtigs.zendesk.com/api/v2" # e.g. https://mydesk.zendesk.com/api/v2
      # Basic / Token Authentication
      config.username = "ijlal.gondal@mtigs.com"
      # config.token = "Zendesk_Token"
      config.token = ENV['Zendek_Token']
    end
    ZendeskAPI::Ticket.create!(@client,
      :subject => "Intervention alert from #{current_user.firstName}, with ID #{@intervention.Author}",
      :description => "Create Ticket",
      :comment => { :value => "The requester #{current_user.firstName} from company #{@intervention.customer.business_name} has made a service request for Building #{@intervention.BuildingID} with Battery #{@intervention.BatteryID}, Column #{@intervention.ColumnID}, and Elevator ID #{@intervention.ElevatorID}, has designated employee #{@intervention.employee.firstName} with following details: #{@intervention.Report}." },
      :type => "question",
      :priority => "urgent")
  end

end

