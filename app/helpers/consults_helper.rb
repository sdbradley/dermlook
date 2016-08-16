module ConsultsHelper
	def isPatientEntered(c)
		c.PatientKey != nil ? false : true
	end
end
