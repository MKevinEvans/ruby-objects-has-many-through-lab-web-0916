class Doctor
  attr_accessor :name, :appointments, :doctor

  def initialize(name)
    self.name = name
    self.appointments = []
  end

  def add_appointment(appt)
    self.appointments << appt
    appt.doctor = self
  end

  def patients
    self.appointments.collect {|appointment| appointment.patient}
  end

end
