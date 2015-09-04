class RibbsController < ApplicationController
  def create
    @ribb = Ribb.new(params[:id])
    @ribb.user_id = current_user.id
    if @ribb.save
      redirect_to current_user
    else
      flash[:error] = "Problem posting your ribb!"
      redirect_to current_user
    end
  end
end
