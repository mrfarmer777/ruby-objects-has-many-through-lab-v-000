class Patient
  attr_accessor :name

  @@all=[]

  def initialize(name)
    @name=name
    @@all<<self
  end

  def new_appointment(doctor,date)
    appt=Appointment.new(date,self,doctor)
  end

  def appointments
    Appointments.all.select {|appt| appt.patient==self}
  end