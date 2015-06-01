class TicketsController < ApplicationController
  
  def create
    @userproject = Ticket.find(params[:userproject_id])
    @ticket = @userproject.ticket.build(ticket_params)
    @ticket.user = current_user
    @ticket.save
    
    redirect_to userprojects_url
    
  end
  
  def destroy
    @userproject = Ticket.find(params[:userproject_id])
    @ticket = @userproject.ticket.find(params[:id]).destroy
    
    redirect_to userprojects_url
    
  end
    
  private
  
    def ticket_params
      params.require(:ticket).permit(:content)
    end
end
