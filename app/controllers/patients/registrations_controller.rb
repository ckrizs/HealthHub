class Patients::RegistrationsController < Devise::RegistrationsController
  def new
    super
    @patient = Patient.new
  end
end
