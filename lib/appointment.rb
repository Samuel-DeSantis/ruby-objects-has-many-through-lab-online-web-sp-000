class Appointment
  attr_accessor :patient, :doctor

  @@all = []

  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    save
  end

  def save
    @@all << self
  end

end
