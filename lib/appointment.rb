class Appointment
  attr_accessor :date,:patient,:doctor

  @@all=[]

  def initialize(datestr,patient,doctor)
    @date=datestr
    @patient=patient
    @doctor=doctor
    @@all<<self
  end



end