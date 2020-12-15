class Patient
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

  def doctors
    Appointment.all.select { |appt| appt.doctor if appt.patient == self }
  end
end
