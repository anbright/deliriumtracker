class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def show
  	@user = User.find(params[:id])
    @data = User.find(params[:id]).accelerometers.all
    @patients = User.find(params[:id]).patients.all
  end
  
  #/users/:id/add_patient/:patient_id
  def add_patient
    @patient = Patient.find(params[:patient_id])
    @current_user = User.find(params[:id])
    unless @current_user.patients.include?(@patient)
      @current_user.patients << @patient
      flash[:success] = "You have successfully added #{@patient.name}"
    else
      flash[:danger] = "Unable to add patient"
    end
    redirect_to action: 'show', id: params[:id]
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
  		redirect_to login_path
  	else
  		render 'new'
  	end
  end

  def help
    	
  end
  
  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
end
