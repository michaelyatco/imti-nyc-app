class ApplicationsController < ApplicationController
  def new
    @application = Application.new
  end

  def create
    @application = Application.new(application_params)
    if current_user.update(user_params)
      if @application.save
        flash[:success] = "Application saved."
        redirect_to edit_application_path(@application.id)
      else
        flash[:danger] = @application.errors.full_messages
        render :new
      end
    else
      flash[:danger] = current_user.errors.full_messages
      render :new
    end
  end

  def edit
    @application = Application.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :middle_initial)
  end

  def application_params
    params.require(:application).permit(:phone_number, :street, :city, 
    :state, :zip_code, :country, :birth_place, :birth_date, 
    :country_of_citizenship, :occupation, :name_of_spouse, 
    :ages_of_children).merge(user_id: current_user.id)
  end

end
