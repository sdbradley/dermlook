class ConsultsController < ApplicationController
	def index
		@users = User.all
		@patients = Patient.all
		@consults = Consult.order('ConsultDate asc').where(Deleted: false).all
	end
	def show
		@users = User.all
		@patients = Patient.all
		@symptoms = Symptom.order('Name desc').where(Deleted: false).all
		@conditions = Condition.order('Name desc').where(Deleted: false).all
		@consultsymptoms = ConsultSymptom.where(ConsultKey: params[:id], Deleted: false)
		@consultconditions = ConsultCondition.where(ConsultKey: params[:id], Deleted: false)
		@consultdiagnoses = ConsultDiagnoses.where(ConsultKey: params[:id], Deleted: false)
		@images = ConsultImage.where(ConsultKey: params[:id], Deleted: false)
		@consult = Consult.order('ConsultKey desc').where(ConsultKey: params[:id]).take
	end
end
