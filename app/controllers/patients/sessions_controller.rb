class Patients::SessionsController < Devise::SessionsController
  def new
    @patient = Patient.new
  end
  def destroy
    super
  end
end
