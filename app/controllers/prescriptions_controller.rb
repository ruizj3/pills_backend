class PrescriptionsController < ApplicationController

  def index
    prescriptions = Prescription.all
    render json: PrescriptionSerializer.new(prescriptions)
  end

  def show
    prescription = Prescription.find(params[:id])
    options = {
      include: [:medication, :patient]
    }
    render json: PrescriptionSerializer.new(prescription, options)
  end

  def create
    @prescription = Prescription.new(p_params)
    if @prescription.save
      render json: @prescription
    else
      render json: {error: 'Error saving prescription backend'}
    end
  end

  def destroy
    @prescription = Prescription.find(params[:id])
    @prescription.destroy
    render json: @prescription
  end

  private

  def p_params
      params.require(:prescription).permit(:dosagestotal, :dosagesper, :dosagesfrequency, :patient_id, :medication_id)
  end

end
