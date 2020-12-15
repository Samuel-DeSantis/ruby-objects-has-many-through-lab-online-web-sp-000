class Doctor
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def patients
    my_patients = Appointment.all.select { |appt| appt.doctor == self }
    my_patients.patient
  end

  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select { |appt| appt.doctor == self }
  end

end
