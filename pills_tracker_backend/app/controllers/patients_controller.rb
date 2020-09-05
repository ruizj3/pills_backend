class PatientsController < ApplicationController

  def index
    patients = Patient.all
    render json: PatientSerializer.new(patients)
  end

  def show
    patient = Patient.find(params[:id])
    options = {
      include: [:doctor]
    }
    render json: PatientSerializer.new(patient, options)
  end

  def create
    @patient = Patient.new(patient_params)
    if @patient.save
      render json: @patient
    else
      render json: {error: 'Error saving patient'}
    end
  end

  private

  def patient_params
    params.require(:patient).permit(:username, :dob, :password, :doctor_id)
  end

end
