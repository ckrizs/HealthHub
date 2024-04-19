class Doctors::SessionsController < Devise::SessionsController
  def new
    @doctor = Doctor.new
  end
  def destroy
    super
  end
end
