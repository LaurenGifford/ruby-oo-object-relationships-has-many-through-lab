class Doctor

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(date, patient)
        Appointment.new(date, patient, self)
    end

    def appointments
        Appointment.all.select{|appt| appt.doctor == self}
    end

    def patients
        self.appointments.collect{|appt| appt.patient}
    end
end


#1. instance method, `#new_appointment`, that takes in
#   a date and an instance of the `Patient` class *in this order*, and creates a
#   new `Appointment`. That `Appointment` should know that it belongs to the
#   doctor.
#2. instance method, `#appointments`, that iterates through all `Appointment`s and finds 
# those belonging to this doctor.
# 3. instance method, `#patients`, that iterates over
#   that doctor's `Appointment`s and collects the patient that belongs to each `Appointment`.