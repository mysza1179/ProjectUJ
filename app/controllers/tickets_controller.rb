class TicketsController < ApplicationController
  
  def create
    @userproject = Userproject.find(params[:userproject_id])
    @ticket = @userproject.tickets.build(tickets_params)
    @ticket.user = current_user
    @ticket.save
    
    redirect_to userprojects_url
    
  end
  
  def destroy
    @userproject = Userproject.find(params[:userproject_id])
    @ticket = @userproject.tickets.find(params[:id]).destroy
    
    redirect_to userprojects_url
    
  end
    
  private
  
    def tickets_params
      params.require(:ticket).permit(:name, :description)
    end
end
